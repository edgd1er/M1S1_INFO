/* -----------------------------------------------------------
   $Id: dfs 2014/11/03 07:16:29 dubiez Exp $
   -----------------------------------------------------------

   display file system.
   Francois Dubiez, 11/2014

 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include "hardware.h"
#include "drive.h"
#include "mbr.h"
#include "super.h"
#include "testassert.h"

unsigned current_vol;

/*  */
int main() {

	unsigned int i,j;
	init();
	load_mbr();

	 char* current_volume_str;

    current_volume_str = getenv("CURRENT_VOLUME");
    PRINT_ASSERT_ERROR_MSG(current_volume_str!=NULL,"Erreur, le volume courant n'est pas défini.un 'export CURRENT_VOLUME = x' est nécéssaire.\n");

    printf("Volume: %s\n",current_volume_str);
    errno = 0;
    current_vol = strtol(current_volume_str, NULL, 10);

    load_super(current_vol);

	printf("Volume list : \n");
	printf("Nombre de volumes: %d\n",mbr.nbrvolumes);

	for(i=0; i<mbr.nbrvolumes; i++) {
		printf("\t[Volume %d] block count : %d\tstart : (cylinder %u, sector %u)\tend : (cylinder %u, sector %u)\n",\
		i,\
	 mbr.mbr_vol[i].vol_nsector,\
	 mbr.mbr_vol[i].vol_first_cylinder,\
	 mbr.mbr_vol[i].vol_first_sector,\
	 get_cylinder_of_bloc(i, mbr.mbr_vol[i].vol_nsector-1)\
	 , get_sector_of_bloc(i, mbr.mbr_vol[i].vol_nsector-1));

		if(i == current_vol) {
			j= get_freespace();
			printf("\t<CURRENT> name : %s\tserial number : %d\tfree block : %u (%u %%)\n", \
					sb.sb_name, sb.sb_num_serial, j , j*100/mbr.mbr_vol[i].vol_nsector);
		}
	}

	return EXIT_SUCCESS;
}
