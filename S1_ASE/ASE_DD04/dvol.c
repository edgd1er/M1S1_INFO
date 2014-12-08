/* ------------------------------
   $Id: vm-skel.c,v 1.1 2014/10/27 07:16:29 dubiez Exp $
   ------------------------------------------------------------

   display volume.
   Francois Dubiez, 10/2014

 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "drive.h"
#include "mbr.h"


int main(int argc, char **argv)
{
	puts("\n--- Programme \"dvol\"  ---");

	/* Met le microprocesseur en mode maitre, prépare les interruptions */
	init();
	load_mbr();

	/* Formate tout le disque avec la valeur choisie */
	display_volume();

	return EXIT_SUCCESS;
}
