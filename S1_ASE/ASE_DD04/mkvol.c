/* ------------------------------
   $Id: vm-skel.c,v 1.1 2014/10/27 07:16:29 dubiez Exp $
   ------------------------------------------------------------

   make volume.
   Francois Dubiez, 10/2014

 */


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>
#include <ctype.h>
#include "drive.h"
#include "mbr.h"

static char *cmdname;

/* Flag set by ‘--verbose’. */
static int verbose_flag;


static void usage() {
	fprintf(stderr, "usage: %s [options]... [args]...\n", cmdname);
	fprintf(stderr, "\toptions : --fs first_cylinder --fs first_sector --size nbsecteurs \n\n");
	exit(EXIT_FAILURE);
}

static void unknown_opt(char opt) {
	if (isprint(opt))
		fprintf(stderr, "Unknown option `-%c'.\n", opt);
	else
		fprintf(stderr, "Unknown option character `\\x%x'.\n", opt);

	usage();
}


int main(int argc, char **argv)
{
	int i;
	int firstcylinder = 0, firstsector = 0, nbsectors=0;
	int c;

	cmdname = argv[0];
	opterr = 0;

	static struct option long_options[] =
	{
			/* These options set a flag. */
			{"verbose", no_argument,       &verbose_flag, 1},
			{"brief",   no_argument,       &verbose_flag, 0},
			/* These options don’t set a flag.
	             We distinguish them by their indices. */
			{"fc",	  required_argument, 0, 'c'},
			{"fs",  required_argument, 0, 's'},
			{"size",  required_argument, 0, 'S'},
			{"help",  required_argument, 0, 'h'},
			{0, 0, 0, 0}
	};


	/* getopt_long stores the option index here. */
	int option_index = 0;

	while ((c = getopt_long (argc, argv, "c:s:S:h",long_options, &option_index)) != -1) {
		switch (c) {
		case 'c':
			firstcylinder = atol(optarg);
			break;
		case 's':
			firstsector = atol(optarg);
			break;
		case 'S':
			nbsectors = atol(optarg);
			break;
		case 'h':
			usage();
			break;
		case '?': /* missing option argument */
			if (optopt == 'c' || optopt == 's') {
				fprintf(stderr, "Option -%c requires an argument.\n", optopt);
				usage();
			} else
				unknown_opt(optopt);
			break;
		default:
			unknown_opt(c);
			break;
		}
	}

	if (optind != argc) {
		fprintf(stderr, "Argument(s): ");
		for (i = optind; i < argc; i++)
			fprintf(stderr, "%s ", argv[i]);
		fprintf(stderr, "ignored.\n");
		usage();
	}

	if (argc<2){usage();}


	fprintf(stdout,"\n--- Programme \"mkvol\"  ---");
	fprintf(stdout,"\n--- parametres: premier cylindre: %d, premier secteur: %d, nombre de secteur: %d \n", firstcylinder, firstsector,nbsectors);

	/* Met le microprocesseur en mode maitre, prépare les interruptions */
	init();
	load_mbr();

	/* creation du volume si disponible */
	newvolume(firstcylinder,firstsector,nbsectors);

}
