#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <errno.h>
#include "hardware.h"
#include "drive.h"
#include "mbr.h"
#include "super.h"
#include "testassert.h"

unsigned int current_vol;
struct sblock_s sb;

/* recuperation du volume courant depuis la variable du shell */
unsigned int get_current_volume() {
	char* current_volume_str;
	current_volume_str = getenv("CURRENT_VOLUME");
	/* printf("Volume: %s\n",current_volume_str);*/
	PRINT_ASSERT_ERROR_MSG(current_volume_str != NULL,
			"Erreur, faites un export CURRENT_VOLUME= X, avec 0<=x<8 pour définier le volume de travail");
	errno = 0;
	current_vol = strtol(current_volume_str, NULL, 10);
	return current_vol;
}

/* initialisation du volume */
void init_current_volume() {
	char* current_volume_str;
	current_volume_str = getenv("CURRENT_VOLUME");

	PRINT_ASSERT_ERROR_MSG(current_volume_str != NULL,
			"Erreur, faites un export CURRENT_VOLUME= X, avec 0<=x<8 pour définier le volume de travail");

	errno = 0;
	current_vol = strtol(current_volume_str, NULL, 10);
	init_super(current_vol, current_volume_str);
	printf("superblock du volume %d initialisé\n", current_vol);
}

/* initialisation du superblock du volume */
void init_super(unsigned int vol, const char* name) {
	unsigned char buffer[HDA_SECTORSIZE];
	struct freebloc_s firstbloc;
	struct sblock_s superbloc;
	assert(vol >= 0);
	assert(vol<Max_Vol);
	PRINT_ASSERT_ERROR_MSG(mbr.mbr_vol[vol].vol_type != VT_FREE,
				"Erreur, le volume courant n'est pas initialisé( type VT_FREE)");

	superbloc.sb_magic = SUPER_MAGIC;
	/* nom aleatoire */
	superbloc.sb_num_serial = rand() % 500000;
	strncpy(superbloc.sb_name, name, 32);
	/* emplacement de la racine du superbloc */
	superbloc.sb_root = 0;
	/* premier bloc disponible */
	superbloc.sb_first_fb = 1;
	superbloc.sb_freesize = mbr.mbr_vol[vol].vol_nsector - 1;
	assert(sizeof(superbloc)<HDA_SECTORSIZE);
	*((struct sblock_s*) buffer) = superbloc;
	/* ecriture du superbloc */
	write_bloc(vol, 0, buffer);
	/* tt est libre */
	firstbloc.fb_next = 0;
	firstbloc.fb_magic=FB_MAGIC;
	firstbloc.size = mbr.mbr_vol[vol].vol_nsector - 1;
	*((struct freebloc_s *) buffer) = firstbloc;
	write_bloc(vol, 1, buffer);
}

/* chargement du superblock du volume */
unsigned int load_super(unsigned int vol) {
	current_vol = vol;
	assert(vol >= 0);
	assert(vol<Max_Vol);
	PRINT_ASSERT_ERROR_MSG(mbr.mbr_vol[vol].vol_type != VT_FREE,
			"Erreur, le volume courant n'est pas initialisé( type VT_FREE)");
	unsigned char buffer[HDA_SECTORSIZE];
	read_bloc(vol, 0, buffer);
	sb = *((struct sblock_s *) buffer);

	return 1;
}

/* sauvegarde du superbloc */
void save_super() {
	unsigned char buffer[HDA_SECTORSIZE];
	*((struct sblock_s*) buffer) = sb;
	write_bloc(current_vol, 0, buffer);
}

/* utilisation d'un bloc du volume */
unsigned int new_bloc() {
	struct freebloc_s fb;
	unsigned char buffer[HDA_SECTORSIZE];
	unsigned int newb;

	/* verification du suoerbloc */
	PRINT_ASSERT_ERROR_MSG(sb.sb_magic==SUPER_MAGIC,"Erreur, le superblock est corrompu ( mauvais MAGIC");

	/* plus de place disponible */
	if (sb.sb_first_fb == 0)
		return 0;
	/*lecture du freebloc */
	read_bloc(current_vol, sb.sb_first_fb, buffer);
	fb = *((struct freebloc_s*) buffer);
	PRINT_ASSERT_ERROR_MSG(fb.fb_magic == FB_MAGIC, "FreeBloc corrompu: mauvais magic");

	if (fb.size == 1) {
		/* segment de freebloc vide, recherche des autres freeblocs */
		newb = sb.sb_first_fb;
		sb.sb_freesize--;
		fb.size--;
		sb.sb_first_fb = fb.fb_next;
	} else {
		fb.size--;
		sb.sb_freesize--;
		fb.fb_magic=FB_MAGIC;
		*((struct freebloc_s*) buffer) = fb;
		write_bloc(current_vol, sb.sb_first_fb, buffer);
		newb = sb.sb_first_fb + fb.size;
	}
	save_super();
	return newb;
}

/* liberation d'un bloc */
void free_bloc(unsigned int bloc) {
	struct freebloc_s fb;
	unsigned char buffer[HDA_SECTORSIZE];
	PRINT_ASSERT_ERROR_MSG(bloc!=0,"Erreur, le superblock n'est pas liberable.");
	/* nouveau segment de freebloc ajouter a la liste des freeblocs */
	fb.fb_magic = FB_MAGIC;
	fb.fb_next = sb.sb_first_fb;
	/* fb.size = sb.sb_freesize; */
	fb.size = 1;
	/* le bloc libéré devient le premier bloc de la liste */
	sb.sb_first_fb = bloc;
	/* sb.sb_freesize = 1; */
	sb.sb_freesize ++;
	/* ecriture du bloc libéré + info de chainage de blocs libres */
	*((struct freebloc_s*) buffer) = fb;
	write_bloc(current_vol, bloc, buffer);
	/* ecriture du superbloc */
	save_super();
}


/* calcul de l'espace libre */
unsigned int get_freespace() {
	struct freebloc_s fb;
	unsigned int esplib;


	unsigned char buffer[HDA_SECTORSIZE];

	/* verification du superbloc */
	PRINT_ASSERT_ERROR_MSG(sb.sb_magic==SUPER_MAGIC,"Erreur, le superblock est corrompu/non existant.(mauvais MAGIC)");

	esplib=0;
	/* lecture du premier fb */
	if (sb.sb_first_fb != 0) {
		read_bloc(current_vol, sb.sb_first_fb, buffer);
		fb = *((struct freebloc_s*) buffer);
		PRINT_ASSERT_ERROR_MSG(fb.fb_magic == FB_MAGIC,
				"FreeBloc corrompu: mauvais magic");
		esplib += fb.size;

		/* Lecture des suivants*/
	unsigned int next = fb.fb_next;
	while (next != 0) {
		/*lecture du freebloc */
		read_bloc(current_vol, next, buffer);
		fb = *((struct freebloc_s*) buffer);
		next = fb.fb_next;
		PRINT_ASSERT_ERROR_MSG(fb.fb_magic == FB_MAGIC,
				"FreeBloc corrompu: mauvais magic");
		esplib += fb.size;
	}
	}
	return esplib;
}


unsigned initialize_bloc(unsigned numbloc) {
	int new_bloc[HDA_SECTORSIZE/4];
	int i;
	read_bloc(current_vol, numbloc, (unsigned char*) &new_bloc);
	for (i = 0; i < HDA_SECTORSIZE/4; i++) {
		new_bloc[i] = 0;
	}
	write_bloc(current_vol, numbloc, (unsigned char*) &new_bloc);
	return numbloc;
}
