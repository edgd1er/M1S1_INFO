#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "hw.h"
#include "libcontext.h"
#define N 2

static struct sem_s mutex, vide, plein;

struct objet_t {
	int mytab;
};

void consommateur(void);
void producteur(void);
void attente(int n);

void produire_objet(struct objet_t*);
void retirer_objet(struct objet_t*);
void mettre_objet(struct objet_t*);
void utiliser_objet(struct objet_t*);

static struct objet_t tampon[N];
int idx = 0;

int main(void) {
	sem_init(&mutex, 1,"mutex");
	sem_init(&vide, N,"vide");
	sem_init(&plein, 0,"plein");

	create_ctx(16384, (func_t) &producteur, NULL);
	create_ctx(16384, (func_t) &consommateur, NULL);

	/*yield();*/
	start_sched();
	for (;;)
		;
	exit(RETURN_SUCCESS);
}

void producteur(void) {
	struct objet_t objet;
	while (1) {
		produire_objet(&objet);
		printf("\nProducteur=>tampon[%d]=%d",idx,objet.mytab);
		sem_down( &vide); /* dec. nb places libres */
		/* entre dans la section critique */
		sem_down(&mutex); /* entree en section critique */
		mettre_objet(&objet); /* mettre l'objet dans le tampon */
		sem_up(&mutex); /* sortie de section critique */
		sem_up(&plein); /* inc. nb place occupees */
		yield();
		/*attente*/
		attente(15);
	}

}

void consommateur(void) {
	struct objet_t objet;
	while (1) {
		printf("\nConsommateur=>tampon[%d]=%d",idx,objet.mytab);
		sem_down(&plein);
		/* entree dans la section critique */
		sem_down(&mutex);
		retirer_objet(&objet);
		sem_up(&mutex);
		/*sortie de la section critique */
		sem_up(&vide);
		utiliser_objet(&objet);
		attente(150);
		/*yield();*/
	}
}

void attente(int n) {
	/*if (!(n % 500)) */
		/*printf("\nAttente n: %d", n);*/
	if (n)
		attente(n - 1);
}

/* produire l'objet suivant */
void produire_objet(struct objet_t* objet) {
	objet->mytab = 1;
	printf("\nProduire: plein: %d vide: %d",plein.cpt, vide.cpt);
}

/* utliser l'objet*/
void utiliser_objet(struct objet_t *objet) {
	printf("\nUtiliser: plein: %d vide: %d", plein.cpt,(int) vide.cpt);
	objet->mytab = 0;
}

/* depot de l'objet*/
void mettre_objet(struct objet_t* objet) {
	tampon[idx++]=*objet;
	if (idx > N)
		printf("\nmettre_objet: depassement du tampon: %d",idx);
	printf("\nMettre: idx: %d Depot:  plein: %d vide: %d", idx,
			plein.cpt, vide.cpt);
}

/*retirer l'objet suivant*/
void retirer_objet(struct objet_t* objet) {
	tampon[idx--]=*objet;
	if (idx < 0)
		printf("\nretirer_objet: on creuse le tampon ....: %d",idx);
	printf("\nRetirer: idx: %d  plein: %d vide: %d",
			idx, plein.cpt, vide.cpt);
}

