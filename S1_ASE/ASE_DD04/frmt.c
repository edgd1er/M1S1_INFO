#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "drive.h"
#include "hardware.h"

void format(c_uint val);

int main(int argc, char **argv)
{
	puts("\n--- Programme \"format\" (frmt) ---\n");

	if (argc != 2)
	{
		puts("Utilisation : ./frmt valeur	\
			\n\tvaleur : entier\n");
		exit(INVALID_PARAMETER);
	}

	/* Met le microprocesseur en mode maitre, prépare les interruptions */
	init();

	/* Formate tout le disque avec la valeur choisie */
	puts("Formatage du disque ...");
	format(atoi(argv[1]));
	puts("Formatage terminé");

	return EXIT_SUCCESS;
}

void format(c_uint val)
{
	uint cyl, sec;

	/* Formate le disque secteur par secteur
	Première boucle sur les cylindres pour limiter les déplacements */
	for(cyl = 0; cyl < HDA_MAXCYLINDER; cyl++)
	{
		for (sec = 0; sec < HDA_MAXSECTOR; sec++)
		{
			format_sector(cyl, sec, 1, val);
		}
	}
}

