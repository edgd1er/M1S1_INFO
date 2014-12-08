/* ------------------------------
   $Id: if_nfile.c,v 1.1 2009/11/16 05:38:07 marquet Exp $
   ------------------------------------------------------------

   Create a new file, read from stdin, return the inumber 
   Philippe Marquet, Nov 2009
   
*/

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include "ifile.h"
#include "mount.h"

unsigned int dbg;


static void
nfile()
{
    file_desc_t fd;
    unsigned int inumber;
    int status;
    int c;

    dbg=0;

    inumber = create_ifile(FILE_FILE);
    ffatal(inumber, "erreur creation fichier");
    printf("%u\n", inumber);

    status = open_ifile(&fd, inumber);
    ffatal(!status, "erreur ouverture fichier %d", inumber);
    
    while((c=getchar()) != EOF)
        writec_ifile(&fd, c);

    close_ifile(&fd);
}

static void
usage(const char *prgm)
{
    fprintf(stderr, "parametre manquant:\n usage:\n\t%s\n", prgm);
    exit(EXIT_FAILURE);
}

int
main (int argc, char *argv[])
{
	/*fprintf(stdout,"parametre1: %s",argv[2]);*/
    if (argc != 1)
        usage(argv[0]);

    mount();
    nfile();
    umount();
    
    exit(EXIT_SUCCESS);         
}