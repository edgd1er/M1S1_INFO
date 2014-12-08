/* ------------------------------------------------------------
 $Id: inode.c.c,v 1.1 2014/11/12  dubiez Exp $
 ------------------------------------------------------------
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>
#include <ctype.h>
#include "inode.h"

/* inodes i/o */
void read_inode(unsigned int inumber, struct inode_s* inode) {
	unsigned char buffer[HDA_SECTORSIZE];
	read_bloc(current_vol, inumber, buffer);
	*inode = *((struct inode_s*) buffer);
}

void write_inode(unsigned int inumber, const struct inode_s *inode) {
	unsigned char buffer[HDA_SECTORSIZE];
	*((struct inode_s*) buffer) = *(inode);
	write_bloc(current_vol, inumber, (unsigned char*) buffer);
}

/* inodes creation/deletion.
 The creation return a inumber */
unsigned int create_inode(enum file_type_e type) {

	unsigned int bloc;
	struct inode_s inode;
	inode.type = type;
	inode.size = 0;
	inode.indirect = 0;
	inode.d_indirect = 0;
	bloc = new_bloc();
	/* memset(inode.direct, 0, N_DIRECT * sizeof(int)); */
	initialize_inode(&inode, type);
	write_inode(bloc, &inode);
	return bloc;
}

int delete_inode(unsigned int inumber) {

	unsigned int i, d_i, bloc[DATA_BLOC_SIZE / 4];

	struct inode_s inode;
	read_inode(inumber, &inode);
	d_i = inode.d_indirect;

	/*d_indirect*/
	if (d_i != 0) {
		read_bloc(current_vol, d_i, (unsigned char*) &bloc);
		for (i = 0; i < DATA_BLOC_SIZE / sizeof(int); i++) {
			free_indirect(bloc[i]);
		}
		free_bloc(d_i);
	}

	/*indirect*/

	if (inode.indirect != 0) {
		free_indirect(inode.indirect);
	}

	/*direct*/

	for (i = 0; i < N_DIRECT; i++) {

		if (inode.direct[i] != 0) {
			free_bloc(inode.direct[i]);
		}
	}
	/* inode */
	free_bloc(inumber);
	return 1;
}

/* liberation des bloc des tables indirectes */
void free_indirect(unsigned int numbloc) {

	unsigned int i, bloc[BLOC_SIZE / sizeof(int)];

	if (numbloc == 0) {
		return;
	}

	read_bloc(current_vol, numbloc, (unsigned char*) &bloc);

	if (numbloc != 0) {

		for (i = 0; i < BLOC_SIZE / sizeof(int); i++) {
			if (bloc[i] != 0) {
				free_bloc(bloc[i]);
			}
		}
	}
	free_bloc(numbloc);
}

/* init a 0 d'un inode */
void initialize_inode(struct inode_s* inode, enum file_type_e type) {
	int i;
	inode->type = type;
	inode->size = 0;
	for (i = 0; i < N_DIRECT; i++) {
		inode->direct[i] = 0;
	}
	inode->indirect = BLOC_NULL;
	inode->d_indirect = BLOC_NULL;
}

/* return the bloc index on the volume of a given bloc index in a
 file.  Return BLOC_NULL for a bloc full of zeros.
 If do_allocate, allocate blocs if needed; return BLOC_NULL if no
 allocation was possible.  */

/* creation du  */
unsigned int vbloc_of_fbloc(unsigned int inumber, unsigned int fbloc,
		bool_t do_allocate) {

	unsigned int bloc[BLOC_SIZE / 4], bloc2[BLOC_SIZE / 4], row, numbloc;
	struct inode_s inode;
	if (dbg > 0) {
		printf("fbloc: %d | ", fbloc);
		printf("do_allocate: %d | \n", do_allocate);
	}

	/* chargement du bloc contenant l'inode */
	read_inode(inumber, &inode);

	/* if direct */
	if (fbloc < N_DIRECT) {
		/* bloc non alloué */
		if (inode.direct[fbloc] == 0) {
			if (do_allocate) {
				numbloc = new_bloc();
				ffatal(numbloc, "erreur: disque plein, plus d'espace libre.");
				inode.direct[fbloc] = initialize_bloc(numbloc);

				if (dbg > 0) {
					printf(
							"vbloc: %u bloc< %u , bool:%i access a un bloc non alloué:%u\n",
							fbloc, N_DIRECT2, do_allocate, inode.direct[fbloc]);
				}
				write_inode(inumber, &inode);
			} else {
				if (dbg > 0) {
					printf(
							"vbloc: bloc<direct, bool:%i access a un bloc non alloué:0\n",
							do_allocate);
				}
				return BLOC_NULL;
			}
		}
		if (dbg > 0) {
			printf("vbloc: direct : %d\n", inode.direct[fbloc]);
		}
		return (inode.direct[fbloc]);
	}

	/* if indirect */
	fbloc -= N_DIRECT;

	if (fbloc < BLOC_SIZE / 4) {
		/*if (fbloc < N_DIRECT2) { */
		/* pas d'indirect existant */
		if (inode.indirect == 0)

		/* on le cree */{
			if (do_allocate) {
				numbloc = new_bloc();
				ffatal(numbloc, "erreur: disque plein, plus d'espace libre.");
				inode.indirect = initialize_bloc(numbloc);
				if (dbg) {
					printf(
							"vbloc: bloc indirect: creation inode.indirect: %u\n",
							inode.indirect);
				};
				write_inode(inumber, &inode);
			} else {
				if (dbg) {
					printf(
							"vbloc: bloc indirect non existant, non créer:  bool %i\n",
							do_allocate);
				}
				return BLOC_NULL;
			}
		}

		/* lecture du bloc indirect */
		read_bloc(current_vol, inode.indirect, (unsigned char*) &bloc);

		if (bloc[fbloc] == 0) {
			if (do_allocate) {
				numbloc = new_bloc();
				ffatal(numbloc, "erreur: disque plein, plus d'espace libre.");
				bloc[fbloc] = initialize_bloc(numbloc);
				/* ecriture du bloc 1er indirection */
				write_bloc(current_vol, inode.indirect, (unsigned char*) &bloc);
				if (dbg) {
					printf(
							"vbloc: bloc>direct mais <indirect: indirect bloc non existant: creation du bloc indirect: %u\n",
							bloc[fbloc]);
				}
				write_inode(inumber, &inode);
			} else {
				if (dbg) {
					printf(
							"vbloc: indirect: bloc indirect n'existe pas mais allocate a false\n");
				}
				return BLOC_NULL;
			}
		}
		//printf("indirect vbloc: %d\n",indirect[block_index]);
		return bloc[fbloc];
	}

	/* if d_indirect */
	fbloc -= (BLOC_SIZE / 4);
	/*fbloc -= (N_DIRECT2); */

	/* au dela du double indirect ? */
	if (fbloc < ((BLOC_SIZE / 4) * (BLOC_SIZE / 4))) {

		/* pas de double indirect */
		if (inode.d_indirect == 0) {
			if (do_allocate) {
				/* allocation du bloc non alloué */
				numbloc = new_bloc();
				ffatal(numbloc, "erreur: disque plein, plus d'espace libre.");
				inode.d_indirect = initialize_bloc(numbloc);
				write_inode(inumber, &inode);
				if (dbg) {
					printf(
							"vbloc: bloc>indirect mais <d_indirect: 1er indirect bloc non existant: creation du bloc indirect: %u\n",
							numbloc);
				}
			} else {
				/* sinon bloc en dehors du spectre de ce indirect */
				if (dbg) {
					printf(
							"vbloc: indirect: bloc d_indirect n'existe pas mais do_allocate = false\n");
				}
				return BLOC_NULL;
			}
		}

		/* lecture du bloc de 2nde indirection */
		read_bloc(current_vol, inode.d_indirect, (unsigned char*) &bloc);

		/* recuperation du numéro de bloc dans le premier indirect */
		row = fbloc / (BLOC_SIZE / 4);
		/* recuperation du numero de bloc dans le second indirect */
		if (bloc[row] == 0) {
			if (do_allocate) {
				/* allocation du bloc non alloué */
				numbloc = new_bloc();
				ffatal(numbloc, "erreur: disque plein, plus d'espace libre.");
				bloc[row] = initialize_bloc(numbloc);
				write_bloc(current_vol, inode.d_indirect,
						(unsigned char*) &bloc);
				if (dbg) {
					printf(
							"vbloc: bloc d_indirect : 1er bloc de d_indirect non existant: creation du bloc indirect: %u\n",
							bloc[row]);
				}
			} else {
				if (dbg) {
					printf(
							"vbloc: bloc d_indirect : 1er bloc de d_indirect non existant: pas de creation du bloc indirect bloc[%u]=%u\n",
							row, bloc[row]);
				}

				return BLOC_NULL;
			}
		}
		/* lecture du second indirect */
		read_bloc(current_vol, bloc[row], (unsigned char*) &bloc2);

		unsigned int row2;
		row2 = fbloc % (BLOC_SIZE / 4);

		if (bloc2[row2] == 0) {
			if (do_allocate) {
				/* allocation du bloc non alloué */
				numbloc = new_bloc();
				ffatal(numbloc, "erreur: disque plein, plus d'espace libre.");
				bloc2[row2] = initialize_bloc(numbloc);
				write_bloc(current_vol, bloc[row], (unsigned char*) &bloc2);
				if (dbg > 0) {
					printf(
							"vbloc: bloc d_indirect : 2eme bloc de d_indirect non existant: creation du bloc indirect bloc2[%u]=%u\n",
							row2, bloc2[row2]);
				}
			} else {
				return BLOC_NULL;
			}
		}
		if (dbg > 0) {
			printf(
					"vbloc: bloc d_indirect : 2eme bloc de d_indirect existant: 2nd bloc indirect %u\n",
					bloc2[fbloc % (BLOC_SIZE / 4)]);
		}
		return bloc2[fbloc % (BLOC_SIZE / 4)];
	}

	printf("vbloc: d_indirect: bloc d_indirect dépassé, fichier trop grand\n");
	return BLOC_NULL;

}

