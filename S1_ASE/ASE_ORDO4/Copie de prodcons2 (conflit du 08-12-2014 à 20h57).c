#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "start_schedule.h"
#include "yield.h"
#include "sem.h"

#define N 100

struct sem_s mutex, vide, plein;

int tampon[N];
int nbElem = 0;

void mettre_objet(int obj)
{
    printf("Prod : %i à %i\n", obj, nbElem);
    tampon[nbElem++] = obj;
}

int retirer_objet()
{
    int objet = tampon[--nbElem];
    printf("Conso : %i à %i\n", objet, nbElem);
    return objet;
}

int produire_objet()
{
    int objet = random()%N;
    printf("%i produit.\n", objet);
    return objet;
}

void utiliser_objet(int objet)
{
    printf("%i utilisé.\n", objet);    
}

void producteur(void)
{
  int objet;
  int a = 0;

	int i;
		for(i=0;i<50;i++) {
    printf("%i...\n", a++);
    objet = produire_objet();
    printf("vide: %i\n", vide.sem_cptr);
    sem_down(&vide);
    printf("sem_down vide: %i\n", vide.sem_cptr);
    printf("mutex: %i\n", mutex.sem_cptr);
    sem_down(&mutex);
    printf("sem_down mutex: %i\n", mutex.sem_cptr);
    mettre_objet(objet);
    printf("mutex: %i\n", mutex.sem_cptr);
    sem_up(&mutex);
    printf("sem_up mutex: %i\n", mutex.sem_cptr);
    printf("plein: %i\n", plein.sem_cptr);
    sem_up(&plein);
    printf("sem_up plein: %i\n", plein.sem_cptr);
  }
}

void consommateur(void)
{
  int objet ;
  int b = 0;

	int i;
		for(i=0;i<70;i++)	
 {
    printf("%i...\n", b++);
    printf("plein: %i\n", plein.sem_cptr);
    sem_down(&plein);
    printf("sem_down plein: %i\n", plein.sem_cptr);
    printf("mutex: %i\n", mutex.sem_cptr);
    sem_down(&mutex);
    printf("sem_down mutex: %i\n", mutex.sem_cptr);
    objet = retirer_objet();
    printf("mutex: %i\n", mutex.sem_cptr);
    sem_up(&mutex);
    printf("sem_up mutex: %i\n", mutex.sem_cptr);
    printf("vide: %i\n", vide.sem_cptr);
    sem_up(&vide);
    printf("sem_up vide: %i\n", vide.sem_cptr);
    utiliser_objet(objet);
  }
}

int main()
{
    sem_init(&mutex, 1);
    sem_init(&vide, N);
    sem_init(&plein, 0);

    create_ctx(16384,producteur,NULL);
    create_ctx(16384,consommateur, NULL);
    
    start_schedule();

    exit(EXIT_SUCCESS);
}



















