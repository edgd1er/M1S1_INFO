#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "drive.h"
#include "hardware.h"

void dump(uchar *buffer, c_uint buffer_size, c_uint ascii, c_uint hexa);

int main(int argc, char **argv)
{
	uint	cyl = 0,
			sec = 0,
			mode = 1;
	uint	ascii = 0, hexa = 1;
	uchar	*buffer = malloc(HDA_SECTORSIZE * sizeof(uchar));

	puts("\n--- Programme \"dump sector\" (dmps) ---\n");

	if (argc != 3 && argc != 4)
	{
		printf("Utilisation : ./dmps cylindre secteur [mode=1]	\
			\n\tcylindre : entier [0 - %d]						\
			\n\tsecteur : entier [0 - %d]						\
			\n\tmode : 1 (hexa), 2 (ascii), 3 (hexa et ascii)\n\n",
			HDA_MAXCYLINDER-1, HDA_MAXSECTOR-1);
		exit(INVALID_PARAMETER);
	}

	cyl = atoi(argv[1]);
	sec = atoi(argv[2]);
	if (argc == 4)
	{
		mode = atoi(argv[3]);
	}

	if (cyl >= HDA_MAXCYLINDER)
	{
		printf("Cylindre invalide : 0 à %d\n", HDA_MAXCYLINDER-1);
		exit(INVALID_CYLINDER);
	}

	if (sec >= HDA_MAXSECTOR)
	{
		printf("Secteur invalide : 0 à %d\n", HDA_MAXSECTOR-1);
		exit(INVALID_SECTOR);
	}

	/* Choix du mode d'affichage */
	switch (mode)
	{
		case 1:
			ascii = 0;
			hexa = 1;
		break;
		case 2:
			ascii = 1;
			hexa = 0;
		break;
		case 3:
			ascii = 1;
			hexa = 1;
		break;
		default:
			puts ("Mode invalide. Hexa par défaut.	\
				\n\t1 (hexa), 2 (ascii), 3 (hexa et ascii)\n");
		break;
	}

	/* Met le microprocesseur en mode maitre, prépare les interruptions */
	init();

	/* Récupère le contenu du secteur choisi et l'affiche */
	printf("Lecture du cylindre %u, secteur %u\n\n", cyl, sec);
	read_sector(cyl, sec, buffer);
	dump(buffer, HDA_SECTORSIZE, ascii, hexa);

	return EXIT_SUCCESS;
}

void dump(uchar *buffer, c_uint buffer_size, c_uint ascii, c_uint hexa)
{
    uint i, j;
    
    for (i = 0; i < buffer_size; i+=16)
    {
		/* offset */
		printf("%.8o", i);
		/* octal dump */
		if (hexa)
		{
			for (j = 0; j < 8; j++)
				printf(" %.2x", buffer[i+j]);

			printf(" - ");
			
			for (; j < 16; j++)
				printf(" %.2x", buffer[i+j]);

			if (ascii)
				printf("\t");
		}
		/* ascii dump */
		if (ascii)
		{
			for (j = 0; j < 8; j++)
				printf(" %1c ", isprint(buffer[i+j])?buffer[i+j]:' ');

			printf(" - ");
			
			for (; j < 16; j++)
				printf(" %1c ", isprint(buffer[i+j])?buffer[i+j]:' ');
		}
		printf("\n");
    }
}

