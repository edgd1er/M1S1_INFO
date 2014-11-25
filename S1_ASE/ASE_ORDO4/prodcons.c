#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "hw.h"
#include "libcontext.h"
#define N 100

struct sem_s* mutex;
struct sem_s* vide;
struct sem_s* plein;

struct objet_t {
	int mytab;
};

void consommateur(void);
void producteur(void );
void attente(int n);


void produire_objet(struct objet_t*);
void retirer_objet(struct objet_t*);
void mettre_objet(struct objet_t*);
void utiliser_objet(struct objet_t*);


static struct objet_t objet;

int main(void)
{
	objet.mytab=N;
	sem_init(mutex,1);
	sem_init(vide,N);
	sem_init(plein,0);


	create_ctx(16384,(func_t) &producteur, NULL);
	create_ctx(16384,(func_t) &consommateur, NULL);

	printf("\nstock main %d",objet.mytab);
	/*yield();*/
	 start_sched();
	  for(;;);
	exit(RETURN_SUCCESS);
}

void producteur(void)
{
		 while (1) {
		printf("\nproducteur=>\n");
		produire_objet(&objet);
		   sem_down((struct sem_s*)&vide);                   /* dec. nb places libres */
		/* entre dans la section critique */
		    sem_down((struct sem_s*)&mutex);                 /* entree en section critique */
		    mettre_objet(&objet);    			             /* mettre l'objet dans le tampon */
		    sem_up((struct sem_s*)&mutex);                   /* sortie de section critique */
		    sem_up((struct sem_s*)&plein);                   /* inc. nb place occupees */
		    yield();
		/*attente*/
		attente(15);
	}

}

void consommateur(void)
{
	while(1){
		printf("\nconsommateur=>\n");
		sem_down((struct sem_s*)&vide);
		/* entree dans la section critique */
		sem_down((struct sem_s*)&mutex);
		retirer_objet(&objet);
		sem_up((struct sem_s*)&vide);
		/*sortie de la section critique */
		sem_up((struct sem_s*)&mutex);
		utiliser_objet(&objet);
		yield();
	}
}

void attente(int n)
{
  if (!(n%500)) printf("n: %d\n",n);
  if (n) attente(n-1);
}

void mettre_objet(struct objet_t *objet){
	objet->mytab++;
	printf("Depot: etat du stock %d\n",objet->mytab); /* depot de l'objet*/

}

void produire_objet(struct objet_t *objet){
	 printf("PRODUIRE: stock: %d\n",objet->mytab); /* utliser l'objet*/
	 }

void utiliser_objet(struct objet_t *objet){
	 printf("utiliser: stock: %d\n",objet->mytab); /* produire l'objet suivant */
}

void retirer_objet(struct objet_t *objet){
	objet->mytab--;
	 printf("Consommer: etat du stock %d\n",objet->mytab); /*consommer  l'objet suivant*/

}


