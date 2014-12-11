/* ------------------------------
   $Id: vm-skel.c,v 1.1 2002/10/21 07:16:29 marquet Exp $
   ------------------------------------------------------------

   Volume manager skeleton.
   Philippe Marquet, october 2002

   1- you must complete the NYI (not yet implemented) functions
   2- you may add commands (format, etc.)

 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "drive.h"
#include "mbr.h"

/* ------------------------------
   command list
   ------------------------------------------------------------*/
struct _cmd {
	char *name;
	void (*fun) (struct _cmd *c);
	char *comment;
};

static void list(struct _cmd *c);
static void new(struct _cmd *c);
static void del(struct _cmd *c);
static void fmt(struct _cmd *c) ;
static void help(struct _cmd *c) ;
static void save(struct _cmd *c);
static void quit(struct _cmd *c);
static void xit(struct _cmd *c);
static void none(struct _cmd *c) ;


static struct _cmd commands [] = {
		{"list", list, 	"display the partition table"},
		{"new",  new,	"create a new partition"},
		{"del",  del,	"delete a partition"},
		{"format", fmt,	"format volume"},
		{"save", save,	"save the MBR"},
		{"quit", quit,	"save the MBR and quit"},
		{"exit", xit,	"exit (without saving)"},
		{"help", help,	"display this help"},
		{0, none, 		"unknown command, try help"}
} ;

/* ------------------------------
   dialog and execute 
   ------------------------------------------------------------*/

static void
execute(const char *name)
{
	struct _cmd *c = commands;

	while (c->name && strcmp (name, c->name))
		c++;
	(*c->fun)(c);
}

static void
loop(void)
{
	char name[64];

	while (printf("> "), scanf("%62s", name) == 1)
		execute(name) ;
}

/* ------------------------------
   command execution 
   ------------------------------------------------------------*/
static void
list(struct _cmd *c)
{
	printf("%s \n", c->name);
	display_volume();
}

static void
new(struct _cmd *c)
{
	int cyl,sec,size;
	printf("%s \n", c->name);
	display_volume();
	printf("Min -->0 Max Cylindre --> %i .Entrer le numero de Cylindre : \n",HDA_MAXCYLINDER);
	scanf ("%i",&cyl);
	printf("Min --> 0 Max Sector --> %i .Entrer le numero de Secteur : \n",HDA_MAXSECTOR);
	scanf ("%i",&sec);
	printf("Max 16 . Entrer le nombre de Secteur : \n");
	scanf ("%i",&size);

	newvolume(cyl,sec, size);
}

static void
del(struct _cmd *c)
{
	unsigned int vol;
	printf("%s \n", c->name);
	printf("Entrer le volume a supprimer:(0-%i)\n",Max_Vol);
	scanf ("%u",&vol);
	deletevolume(vol);
	printf("fin de la suppression de volume\n");
}

static void
fmt(struct _cmd *c)
{
	unsigned int vol;
	printf("%s \n", c->name);
	printf("Entrer le volume a formater:(0-%i)\n",Max_Vol);
	scanf ("%u",&vol);
	format_bloc(vol);
	printf("fin du formatage\n");
}
static void
save(struct _cmd *c)
{
	save_mbr();
	printf("%s NYI\n", c->name);
}

static void
quit(struct _cmd *c)
{
	save_mbr();
	printf("%s \n", c->name);
	exit(EXIT_SUCCESS);
}

static void
do_xit()
{
	exit(EXIT_SUCCESS);
}

static void
xit(struct _cmd *dummy)
{
	do_xit();
}

static void
help(struct _cmd *dummy)
{
	struct _cmd *c = commands;

	for (; c->name; c++)
		printf ("%s\t-- %s\n", c->name, c->comment);
}

static void
none(struct _cmd *c)
{
	printf ("%s\n", c->comment) ;
}

void init_master()
{
	init();
}




int
main(int argc, char **argv)
{
	init_master();
	load_mbr();
	/* dialog with user */
	loop();

	/* abnormal end of dialog (cause EOF for xample) */
	do_xit();

	/* make gcc -W happy */
	exit(EXIT_SUCCESS);
}
