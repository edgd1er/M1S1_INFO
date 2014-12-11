#ifndef DRIVE_H_INCLUDED
#define DRIVE_H_INCLUDED

#define DEFAULT_HW_CONFIG "etc/hardware.ini"

/********** CONSTANTS *********************************************************/
	/* Paramètres du contrôleur IDE */
	#define ENABLE_HDA			1		/* 0 pour désactiver la simulation	*/
	#define HDA_CMDREG      	0x3F6	/* Registre de commande				*/
	#define HDA_DATAREGS    	0x110	/* Base des registres de données	*/
	#define HDA_IRQ         	14		/* Interruption du disque			*/

	/* Géométrie du disque */
	#define HDA_MAXCYLINDER 	16
	#define HDA_MAXSECTOR   	16
	#define HDA_SECTORSIZE  	256

	/* Erreurs */
	#define INVALID_CYLINDER	1
	#define INVALID_SECTOR		2
	#define INVALID_GEOMETRY	4
	#define INVALID_PARAMETER	8
/* 	#define EXIT_FAILURE		10 */
/* 	#define EXIT_SUCESS			0 */

/********** TYPES *************************************************************/
	/* Alias */
	typedef unsigned int	uint;
	typedef const uint		c_uint;
	typedef unsigned char	uchar;

/********** PROTOTYPES ********************************************************/
	void read_sector	(unsigned int cyl, unsigned int sec, unsigned char *buffer);
	void write_sector	(unsigned int cyl, unsigned int sec, const unsigned char *buffer);
	void format_sector	(unsigned int cyl, unsigned int sec, unsigned int nsec, unsigned int value);



	void init			();
	void seek			(c_uint cyl, c_uint sec);

#endif
