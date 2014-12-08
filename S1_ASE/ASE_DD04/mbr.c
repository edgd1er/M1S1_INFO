#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include "mbr.h"
#include "drive.h"

struct mbr_s mbr;

/* Suppression d'un volume */
int deletevolume(unsigned int volume){
	/* y a t-il des volumes a supprimer ?*/
	if (checkVolume(volume)){
		/* suppression du volume */
		mbr.mbr_vol[volume].vol_type = VT_FREE;
		mbr.mbr_vol[volume].vol_first_cylinder= -1;
		mbr.mbr_vol[volume].vol_first_sector=-1;
		mbr.mbr_vol[volume].vol_nsector=-1;
		mbr.nbrvolumes-=1;
		return 1;
	}
	return -1;
}


/* nouveau volume */
int newvolume(unsigned int cyl, unsigned int sec, unsigned int size){
	int i=0;
	int c=0;
	while(i<Max_Vol)
	{
		if (mbr.mbr_vol[i].vol_type == VT_FREE) {
			c=1;
			break;
		}
		i++;
	}
	if (c==0)
	{
		fprintf(stderr,"Nombre de volume maximum (%d) atteint !. Sortie",Max_Vol);
		return 0;
	}

	if (libre(cyl,sec,size)==1){
		mbr.mbr_vol[i].vol_first_cylinder=cyl;
		mbr.mbr_vol[i].vol_first_sector=sec;
		mbr.mbr_vol[i].vol_nsector=size;
		mbr.mbr_vol[i].vol_type=VT_STD;
		mbr.nbrvolumes+=1;
		fprintf(stdout,"Volume %i cyl=%d, sec=%d, taille=%d crée\n",i,cyl,sec,size);
		save_mbr();
		return 1;
	}
	return 0;
}

int checkVolume(unsigned int volume){
	if ((volume<0) && (volume>Max_Vol)){
		fprintf(stderr,"Volume %d hors limite (0-%d)!\n",volume,Max_Vol);
		return -1;}
	return 1;
}

/* le bloc ne doit pas se trouver apres la fin du volume */
int checkBloc(unsigned int volume,unsigned int bloc){
	unsigned int taille=0;
	taille=mbr.mbr_vol[volume].vol_nsector;

	if (checkVolume(volume)==0){return 0;}

	if(bloc> taille)
	{
		fprintf(stderr,"bloc %d hors limite du volume %d taille: %d)!\n",bloc,volume,taille);
		return -1;
	}
	return 1;
}

/* l'espace est il disponible ? */
int libre(unsigned int cyl,unsigned int sec,unsigned int nbsec)
{
	int i,j;
	int premiersec=0;
	int derniersec=0;
	int intervaleMax=(HDA_MAXSECTOR*HDA_MAXCYLINDER)-1;
	int wishedFirstSec=cyl*HDA_MAXSECTOR + sec;
	int wishedLastSec = wishedFirstSec + nbsec-1;


	/* verification des parametres */
	if ((cyl<0) || (cyl> HDA_MAXCYLINDER ))
	{
		printf("Le numero de piste %d n'est pas correct (0-%d)\n",cyl,HDA_MAXCYLINDER);
		return 0;
	}

	if ((sec<0) || (sec> HDA_MAXSECTOR ))
	{
		printf("Le numero de secteur %d n'est pas correct (0-%d)\n",sec,HDA_MAXSECTOR);
		return 0;
	}


	/* protection du mbr */
	if ((cyl==0) && (sec==0)) { printf("Erreur, secteur reservé au mbr\n"); return -1; }

	/* en dehors des limites */
	if (cyl*HDA_MAXSECTOR +sec+nbsec>intervaleMax )
	{
		printf("Secteur numero virtuel %i depasse la capacite du disque\n",cyl*HDA_MAXSECTOR + sec + nbsec);
		return 0;
	}

	/* verification parmi les volumes existants */
	fprintf(stdout,"volume souhaité cyl: %d, sec:%d secteur virtuel:(%d-%d)\n",cyl,sec,wishedFirstSec, wishedLastSec);
	for (i=0;i<Max_Vol;i++){
		if (mbr.mbr_vol[i].vol_type != VT_FREE) {
			/* definition des limites du volumes i */
			premiersec=mbr.mbr_vol[i].vol_first_cylinder*HDA_MAXSECTOR+mbr.mbr_vol[i].vol_first_sector;
			derniersec=premiersec + mbr.mbr_vol[i].vol_nsector-1;
			fprintf(stdout,"Etude du vol: %d, cyl:%d, sec%d,nb:%d\n",i,mbr.mbr_vol[i].vol_first_cylinder,mbr.mbr_vol[i].vol_first_sector,mbr.mbr_vol[i].vol_nsector);

			/* parcours du volume souhaite pour voir s'il ecraserait le volume i */
			for(j=wishedFirstSec;j<=wishedLastSec; j++)
			{
				/*  secteur deja occupé ? */
				if ((j>=premiersec) && (j<=derniersec)){
					printf("Secteur numero virtuel %i déja occupé par le volume %i \n",j,i);
					return 0;
				}
			}
		} /* volume non libre */
	} /* fin de parcours des volumes */
	return 1;
}

/* Affichage des volumes */
void display_volume(){
	int i=0;
	puts("Affichage des volumes ...");
	printf("Nb de volumes:%u\n",mbr.nbrvolumes);
	for (i=0;i<Max_Vol;i++){
		printf("Numero : %u , PCylindre : %i , PSecteur : %i , NSecteur : %i , ",i,
				mbr.mbr_vol[i].vol_first_cylinder,
				mbr.mbr_vol[i].vol_first_sector,
				mbr.mbr_vol[i].vol_nsector);
		switch(mbr.mbr_vol[i].vol_type)
		{
		case VT_FREE : printf("Type : Libre\n");break;
		case VT_STD : printf("Type : Standard\n");break;
		case VT_EXTEND : printf("Type : Extend\n");break;
		case VT_OTHER : printf("Type : Autre\n");break;
		}
	}

	puts("terminé");
}

/* chargement du mbr */
int load_mbr(){
	int i;
	unsigned char *buffer;
	assert(sizeof(struct mbr_s) <= HDA_SECTORSIZE);
	buffer=malloc(HDA_SECTORSIZE*sizeof(char));
	verif_mbr_size();
	read_sector(0,0, buffer);
	memcpy(&mbr,buffer,sizeof(struct mbr_s));

	/* verification de l'etat de la mbr */
	if(mbr.mbr_magic == MBR_MAGIC)
	{
		printf("mbr chargé\n");
	}
	else{
		/* initialisation de la mbr */
		mbr.mbr_magic=MBR_MAGIC;
		mbr.nbrvolumes=0;
		for(i=0;i<Max_Vol;i++)
		{
			mbr.mbr_vol[i].vol_type=VT_FREE;
			mbr.mbr_vol[i].vol_first_cylinder=-1;
			mbr.mbr_vol[i].vol_first_sector=-1;
			mbr.mbr_vol[i].vol_nsector=-1;
		}
		save_mbr();
		printf("mbr initialisé\n");
	}


	free(buffer);
	return 1;
}

int verif_mbr_size(){
	if (HDA_SECTORSIZE>=sizeof(struct mbr_s))
	{return 1;}
	else{ puts("mbr: erreur, la taille du mbr est superieur a celle du secteur (256)");
	exit(EXIT_FAILURE);
	return 0;
	}
}

/* sauvegarde du mbr */
void save_mbr(){
	assert(sizeof(struct mbr_s) <= HDA_SECTORSIZE);
	write_sector(0,0,(unsigned char*)&mbr);
}

/* retourne le numero de cylindre du volume et bloc */
int get_cylinder_of_bloc(unsigned int volume,unsigned int bloc){
	/* TODO verification des parametre */
	if (checkVolume(volume)<1){return -1;}

	if ((bloc>=0) && ( mbr.mbr_vol[volume].vol_first_cylinder>=0 ))
	{
		struct volume_s vol= mbr.mbr_vol[volume];
		int cyl_init= vol.vol_first_cylinder;
		int sec_init= vol.vol_first_sector;
		int newcyl =(cyl_init+(sec_init+bloc)/HDA_MAXSECTOR);

		if (newcyl> HDA_MAXCYLINDER)
		{
			fprintf(stderr,"get_cylinder_of_bloc: volume/bloc hors limite (%d>%d)\n", \
					cyl_init+(sec_init+bloc)/HDA_MAXSECTOR, HDA_MAXCYLINDER);
			exit(EXIT_FAILURE);
		}
		/* cyl = cyl_init +nbsector/nb secteur par piste  */
		/*fprintf(stdout,"get_cylinder_of_bloc: %d\n",newcyl);*/
		return newcyl;
	}
	printf("Erreur dans get_cylinder_of_bloc: bloc <0 ou premier cylindre du volume non parametré, erreur de mbr\n");
	exit(EXIT_FAILURE);
}

/* retourne le numero de secteur du volume et bloc */
int get_sector_of_bloc(unsigned int volume,unsigned int bloc){
	int sec=0;

	if (checkVolume(volume)<1){return -1;}

	if ((bloc>=0) && ( mbr.mbr_vol[volume].vol_first_cylinder>=0 ))
	{
		struct volume_s vol= mbr.mbr_vol[volume];
		/* int cyl_init= vol.vol_first_cylinder;*/
		int sec_init= vol.vol_first_sector;
		sec= (sec_init+bloc)%HDA_MAXSECTOR;
		/* le reste de la division du nb de bloc par le nb de secteur */
		/* sec = cyl_init +nbsector/nb secteur par piste  */
		/*printf("get_sector_of_bloc: %d\n",sec);*/
		return sec;
	}
	printf("Erreur dans get_sector_of_bloc: bloc <0 ou volume non existant \n");
	return -1;
}

/* lecture d'un bloc du volume */
void read_bloc(unsigned int vol, unsigned int nbloc,unsigned char *buffer){
	/* void read_sector(c_uint cyl, c_uint sec, uchar *buffer) */
	unsigned int cyl=get_cylinder_of_bloc(vol,nbloc);
	unsigned int sec= get_sector_of_bloc(vol,nbloc);
	if (checkVolume(vol)&&(checkBloc(vol,nbloc))){
	read_sector(cyl,sec,buffer);
	}
}

/* ecriture d'un bloc du volume */
void write_bloc(unsigned int vol, unsigned int nbloc,const unsigned char *buffer){
	if (checkVolume(vol)&&(checkBloc(vol,nbloc))){
		write_sector(get_cylinder_of_bloc(vol,nbloc),get_sector_of_bloc(vol,nbloc),buffer);
	}
}

/* Formatage du volume */
void format_bloc(unsigned int volume){
	if (checkVolume(volume)){
		format_sector(get_cylinder_of_bloc(volume,0),get_sector_of_bloc(volume,0),mbr.mbr_vol[volume].vol_nsector,10);
	}
}
/* plusieurs blocs*/
/* Lecture */
/*
void read_bloc_n(unsigned int vol, unsigned int nbloc,unsigned char *buffer,unsigned size){
	read_sector_nb(get_cylinder_of_bloc(vol,nbloc),get_sector_of_bloc(vol,nbloc),buffer);
}
 */
/* Ecriture */
/*
void write_bloc_n(unsigned int vol, unsigned int nbloc,const unsigned char *buffer,unsigned size){
	write_sector_nb(get_cylinder_of_bloc(vol,nbloc),get_sector_of_bloc(vol,nbloc),buffer,size);
}
 */
