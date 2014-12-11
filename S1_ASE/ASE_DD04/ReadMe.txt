/* 
 ____  ____    ___ 
(_  _)(  _ \  | __)
  )(   )___/  | | \
 (__) (__)    (___/

 */
 
  F.Dubiez 25/10/2014
 
 -----------------------------------
 
  Système de Fichiers "à la UNIX"
  
faire pour rendre disponible le volume a traiter
  export CURRENT_VOLUME=0

test des inodes:
	ecriture/lecture/suppression d'un fichier court.
	controle de l'espace disque
	ecriture/lecture d'un fichier long (+ de la moitié du disque.)
	controle de l'espace disque
	copie du fichier long (=> erreur disque plein.)
	controle de l'espace disque (disque plein:fb 0%)
	suppression du fichier 2 (inumber 117)
	controle de l'espace disque (disque fb: 46%)
	suppression du fichier 1 (inumber 249)
	controle de l'espace disque (disque fb: 100%, fragmenté donc long)
-----------------------------------------------------------------------------
Validation:

Volume:
	creation d'un disque
	affichage d'un secteur (contenu aleatoire)
	formatage
	affichage d'un secteur (contenu choisi)
	creation de volume avec test des limites
-> valid_volume.sh

FileSystem:
	recuperation de la variable locale
	creation du filesystem sur le volume X (+superblock)
	lecture des 8 volumes et  affichage fs si defini

test d allocation: ./test_alloc


-----------------------------------------------------------------------------

Fonctions	
 
 drive.c: gestion des operations disques: ecriture, lecture, format de secteurs. 
	void read_sector(unsigned int cyl, unsigned int sec, unsigned char *buffer);
	void write_sector(unsigned int cyl, unsigned int sec, const unsigned char *buffer);
	void format_sector(unsigned int cyl, unsigned int sec, unsigned int nsec, unsigned int value);
	void init();
	void seek(c_uint cyl, c_uint sec);
 
 mbr.c: gestion des volumes via le mbr, ecriture, lecture, formatage de blocs appartenant a un volume.
 
	int load_mbr(); 
	int verif_mbr_size();
	void display_volume();
	int libre(int cyl,int sec,int nbsec);
	void save_mbr();

	int get_cylinder_of_bloc(int volume, int bloc);
	int get_sector_of_bloc(int volume, int bloc);

	void read_bloc(unsigned int vol, unsigned int nbloc,unsigned char *buffer);
	void write_bloc(unsigned int vol, unsigned int nbloc,const unsigned char *buffer);
	void read_bloc_n(unsigned int vol, unsigned int nbloc,unsigned char *buffer,unsigned size);
	void write_bloc_n(unsigned int vol, unsigned int nbloc,const unsigned char *buffer,unsigned size);
	void format_bloc(int volume);

	-Compilation
	
	    "make all"
        "make clean", supprime les .o générés
        "make realclean", supprime les .o et les disques virtuels.
	
	-Utilisation
	
	lié a la librairie drive
		dmps -c XX -s YY (ou XX et YY sont des entiers entre 00 et 16 representant le cylindre et le secteur voulus, dump d'un secteur)
		frmt (formatage du disque en entier)
		
	lié a la librairie mbr:
		dvol		affichage des la liste de volumes
		mkvol --fc XX --fs YY --size ZZ (creation d'un volume en position de cylinde XX et secteur YY, pour une taille de ZZ) 
		
	
