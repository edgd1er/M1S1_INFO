#include <stdio.h>
#include <stdlib.h>
#include "hardware.h"
#include "drive.h"
#include "mbr.h"
#include "super.h"
#include "testassert.h"

int main() {

	unsigned int i, b1, b2, b3, esplib;

	init();

	/* chargement du mbr */
	load_mbr();
	/* recup du volume courant */
	int current_vol= get_current_volume();

	/* remise a zero du volume */
	init_current_volume();
	printf("Test sur le volume %d :\n", current_vol);
	printf("Remise a zero du volume (init)Test sur le volume %d :\n", current_vol);

	/* chargement du superblock du volume */
	load_super(current_vol);

	printf("-Test 1 : test de cohérence pour l espace libre entre superblock et mbr  \n");

	PRINT_ASSERT_ERROR_MSG(sb.sb_freesize == mbr.mbr_vol[current_vol].vol_nsector-1, "[1] erreur, différence entre l'espace libre indiqué par le superblock et celui indiqué par le mbr");

	/*simple alloc and free*/

	printf("-Test 2 : test de creation/liberation de bloc\n");
	b1= new_bloc();
	b2=new_bloc();
	b3=new_bloc();
	printf("--Bloc1:%u\n",b1);
	printf("--Bloc2:%u\n",b2);
	printf("--Bloc3:%u\n",b3);

	PRINT_ASSERT_ERROR_MSG(b1 -1 == b2 , "[2-1] erreur, numero de bloc inattendu (b1 -1 != b2)");
	PRINT_ASSERT_ERROR_MSG(b3+1 == b2, "[2-2] erreur, numero de bloc inattendu (b2-1 != b3)");
	printf("--Test de creation: ok\n\n");

	free_bloc(b1);
	free_bloc(b2);
	free_bloc(b3);

	/* calcul de l'espace libre */
	esplib=get_freespace();

	printf("--espace libre calculé avec les freeblocs: %u\n",esplib);
	printf("--espace libre selon le superblock: %u\n",sb.sb_freesize);
	printf("--espace total selon la mbr : %u\n",mbr.mbr_vol[current_vol].vol_nsector-1);

	PRINT_ASSERT_ERROR_MSG(esplib == mbr.mbr_vol[current_vol].vol_nsector-1, "[2-3] Erreur lors de la liberation des blocs");
	printf("--Test de libération: ok\n\n");

	/*alloc all volume*/
	printf("-Test 3 : Remplissage du volume \n");

	for(i=0; i<mbr.mbr_vol[current_vol].vol_nsector-1; i++) {
		printf("demande %u du bloc = %u\n",i,new_bloc());
		printf("--espace restant: %u\n",get_freespace());
	}

	printf("--volume complet: espace restant: %u\n",sb.sb_freesize);

	PRINT_ASSERT_ERROR_MSG(sb.sb_freesize == 0, "[3-1] Unexpected free bloc number");

	PRINT_ASSERT_ERROR_MSG(new_bloc() == 0, "[3-2] Unexpected new bloc return (No bloc avaliable)");

	for(i=mbr.mbr_vol[current_vol].vol_nsector-1; i>0; i--) {
		printf("Liberation du bloc %u\n",i);
		free_bloc(i);
	}

	PRINT_ASSERT_ERROR_MSG(sb.sb_freesize == mbr.mbr_vol[current_vol].vol_nsector-1, "[3-3] volume non vidé, il reste des blocs utilisés.");
	printf("--volume vide: espace restant selon le superblock: %u\n",sb.sb_freesize);
	printf("--volume vide: espace restant selon les fb: %u\n",get_freespace());
	printf("--Test de remplissage/liberation du volume OK\n\n");

	/* retest simple test */

	printf("Test 4 : nouveau test simple affectation/liberation\n");

	PRINT_ASSERT_ERROR_MSG((b1 = new_bloc()) != 0, "[4-1] Unexpected bloc number return of new bloc");

	PRINT_ASSERT_ERROR_MSG((b2 = new_bloc()) != 0, "[4-2] Unexpected bloc number return of new bloc");

	PRINT_ASSERT_ERROR_MSG((b3 = new_bloc()) != 0, "[4-3] Unexpected bloc number return of new bloc");

	free_bloc(b1);
	free_bloc(b2);
	free_bloc(b3);
	PRINT_ASSERT_ERROR_MSG(sb.sb_freesize == mbr.mbr_vol[current_vol].vol_nsector-1, "[3-3] volume non vidé, il reste des blocs utilisés.");
	printf("--volume vide: espace restant selon le superblock: %u\n",sb.sb_freesize);
	printf("--volume vide: espace restant selon les fb: %u\n",get_freespace());
	printf("--Test de remplissage/liberation du volume OK\n\n");

	printf("--Test simple OK\n\n");

	return EXIT_SUCCESS;
}
