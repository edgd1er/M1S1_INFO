#include <stdlib.h>
#include <stdio.h>
#include "drive.h"
#include "hardware.h"

static void empty_it() { return; }

void init()
{
	uint ncyl = 0, nsec = 0, sector_size = 0, status=0;
	uint i;
    char* hw_config;

    hw_config = getenv("HW_CONFIG");
    hw_config = hw_config ? hw_config : DEFAULT_HW_CONFIG;

	/* Met le microprocesseur en mode maitre */
	puts("Initialisation du matériel ...");
	status = init_hardware(hw_config);
	if (!status)
		{printf("error in hardware initialization with %s\n", hw_config);}

	/*init_hardware("etc/hardware.ini");*/

	/* Prépare les interruptions */
	puts("Préparation des interruptions...");
	for(i = 0; i < IRQ_VECTOR_SIZE; i++)
	{
		IRQVECTOR[i] = empty_it;
	}

	/* Vérifie la géométrie du disque */
	puts("Vérification du disque ...");
	/* Retourne la géométrie du disque dans HDA_DATAREGS */
	_out(HDA_CMDREG, CMD_DSKINFO);

	/* Lit la géométrie du disque octet par octet */
	ncyl		= (_in(HDA_DATAREGS + 0) << 8) + _in(HDA_DATAREGS + 1);
	nsec		= (_in(HDA_DATAREGS + 2) << 8) + _in(HDA_DATAREGS + 3);
	sector_size	= (_in(HDA_DATAREGS + 4) << 8) + _in(HDA_DATAREGS + 5);

	if (HDA_MAXCYLINDER != ncyl)
	{
		puts("Nombre de cylindres invalide à l'initialisation");
		exit(INVALID_GEOMETRY);
	}
	
	if (HDA_MAXSECTOR != nsec)
	{
		puts("Nombre de secteurs invalide à l'initialisation");
		exit(INVALID_GEOMETRY);
	}
	
	if (HDA_SECTORSIZE != sector_size)
	{
		puts("Taille des secteurs invalide à l'initialisation");
		exit(INVALID_GEOMETRY);
	}

	puts("Initialisation terminée\n");
}

void seek(unsigned int  cyl, unsigned int  sec)
{
	/* Indique le cylindre et le secteur à chercher, octet par octet */
	_out(HDA_DATAREGS + 0, (cyl >> 8)	& 0xFF);
	_out(HDA_DATAREGS + 1, cyl			& 0xFF);
	_out(HDA_DATAREGS + 2, (sec >> 8)	& 0xFF);
	_out(HDA_DATAREGS + 3, sec			& 0xFF);

	/* Lance la commande CMD_SEEK et attend sa terminaison */
	_out(HDA_CMDREG, CMD_SEEK);
	_sleep(HDA_IRQ);
}

void read_sector(unsigned int  cyl, unsigned int  sec, uchar *buffer)
{
	uint i;

	/* Cherche le secteur à lire */
	seek(cyl, sec);

	/* Indique le nombre de secteurs à lire (1), octet par octet */
	_out(HDA_DATAREGS + 0, 0x0);
	_out(HDA_DATAREGS + 1, 0x01);

	/* Lance la commande CMD_READ et attend sa terminaison */
	_out(HDA_CMDREG, CMD_READ);
	_sleep(HDA_IRQ);

	/* Récupère le résultat de la lecture stocké dans MASTERBUFFER */
	for (i = 0; i < HDA_SECTORSIZE; i++)
	{
		buffer[i] = MASTERBUFFER[i];
	}
}

void write_sector(unsigned int  cyl, unsigned int  sec, const unsigned char *buffer)
{
	uint i;

	/* Cherche le secteur où écrire */
	seek(cyl, sec);

	/* Place la chaîne à écrire dans MASTERBUFFER */
	for (i = 0; i < HDA_SECTORSIZE; i++)
	{
		MASTERBUFFER[i] = buffer[i];
	}

	/* Indique le nombre de secteurs à écrire (1), octet par octet */
	_out(HDA_DATAREGS + 0, 0x0);
	_out(HDA_DATAREGS + 1, 0x01);

	/* Lance la commande CMD_WRITE et attend sa terminaison */
	_out(HDA_CMDREG, CMD_WRITE);
	_sleep(HDA_IRQ);
}

void format_sector(unsigned int  cyl, unsigned int  sec, unsigned int  nsec, unsigned int  value)
{
	/* Cherche le secteur à formater */
	seek(cyl, sec);

	/* Indique le nombre de secteurs à formater, octet par octet */
	_out(HDA_DATAREGS + 0, (nsec >> 8)		& 0xFF);
	_out(HDA_DATAREGS + 1, nsec				& 0xFF);

	/* Indique la valeur de formatage, octet par octet */
	_out(HDA_DATAREGS + 2, (value >> 24)	& 0xFF);
	_out(HDA_DATAREGS + 3, (value >> 16)	& 0xFF);
	_out(HDA_DATAREGS + 4, (value >> 8)		& 0xFF);
	_out(HDA_DATAREGS + 5, value			& 0xFF);

	/* Lance la commande CMD_FORMAT et attend sa terminaison */
	_out(HDA_CMDREG, CMD_FORMAT);
	_sleep(HDA_IRQ);
}

