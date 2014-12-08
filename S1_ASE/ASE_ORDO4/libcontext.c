#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include "hw.h"
#include "libcontext.h"

#define MAGIC 0xDEADBEEF
#define RETURN_SUCCESS 0
#define RETURN_FAILURE 1
#define DEBUG 0
char *statestrings[] = { "TEST", "RREADY", "STARTED", "TTERMINATED", "STOPPED" };

/*sauvegarde du contexte dans la variable ctx */
#define  save_to_ctx(ctx) {\
		/* _XX__ appel via une macro */\
		__asm__("movl %%esp,%0" "\n\t"\
				"movl %%ebp,%1"\
				:"=r"(ctx->ctx_esp),\
				 "=r"(ctx->ctx_ebp)\
				 :\
				  :\
		);\
}

/* envoi des variables esp et ebp (contexte) depuis la structure ctx */
/* dans les registres du processeur */
#define load_ctx(ctx) {\
		/* _XX__ appel via une macro */\
		__asm__("movl %0,%%esp" "\n\t"\
				"movl %1,%%ebp"\
				:\
				 :"r"(ctx->ctx_esp),\
				  "r"(ctx->ctx_ebp)\
				  :\
		);\
}

/* stockage dans le tas du contexte courant */
static struct ctx_s* current_ctx = NULL;
/* stockage dans le tas du pointeur de contexte */
static struct ctx_s* ctx_ring = NULL;

/* initialisation */
/* du contexte ctx 
 pour une zone memoire de stacksize
 ou s executera la fonction f
 prenant args comme argument
 */
int init_ctx(struct ctx_s* ctx, int stacksize, func_t f, void* args) {
	/* variable pour s assurer  de la non corruption de la pile */
	ctx->ctx_magic = MAGIC;
	/* argument de la fonction f */
	ctx->ctx_arg = args;
	/* fonction a lancer dans le contexte */
	ctx->ctx_func = f;
	/* zone memoire de la pile */
	ctx->ctx_zone = malloc(stacksize);
	/* definition de esp et ebp */
	ctx->ctx_esp = (unsigned int*) (ctx->ctx_zone) + stacksize -4 ;
	ctx->ctx_ebp = (unsigned int*) (ctx->ctx_zone) + stacksize -4 ;
	/* par defaut, marqueur de l'état de la fonction */
	ctx->ctx_started = 0;
	ctx->ctx_status= RREADY;
	if (DEBUG)
		printf("\ninit_ctx: %p, status: %s ebp: %p esp: %p", (void*) ctx,
					statestrings[ctx->ctx_status],(void *)ctx->ctx_ebp,(void *)ctx->ctx_esp );

	if (!ctx->ctx_zone)
		return RETURN_FAILURE;

	return 0;
}

void switch_to_ctx(struct ctx_s *ctx) {
	/*static struct ctx_s *temp_ctx;
	 temp_ctx= ctx;*/
	if (DEBUG)
	fprintf(stdout,"\nSwitch_to_ctx");

	/*sauvegarde du contexte courant.*/
	if (current_ctx) {
		if (DEBUG)
		printf("\nSave into Current_ctx context =%p", (void*) current_ctx);
		irq_disable();
		save_to_ctx(current_ctx);
		irq_enable();
	}else {
		/* ctx_ring = (struct ctx_s*)malloc(sizeof(struct ctx_s)); */
		if (DEBUG)
		printf("\nSave into Ring context =%p", (void*) ctx_ring);
		irq_disable();
		/*save_to_ctx(ctx_ring);*/
		irq_enable();
	}

	/*suppression du ring du context terminé*/
	while (ctx->ctx_next->ctx_status == TTERMINATED) {
		remove_next(ctx);
	}

	/*1er demarrage de la tache*/
	if ((ctx->ctx_status == RREADY) && (ctx->ctx_magic == MAGIC)) {
		/*protection contre les interruptions pdt le changement de pile*/
		if (DEBUG)
		printf("\nNew task started, was ready=%p", (void*) ctx);
		irq_disable();
		ctx->ctx_status = STARTED;
		ctx->ctx_started = 1;
		current_ctx = ctx;
		load_ctx(ctx);
		irq_enable();
		/*lancement de la fonction*/
		current_ctx->ctx_func(current_ctx->ctx_arg);
		/*fin de l'execution dela fonction, sera marquée comme terminée.*/
		current_ctx->ctx_status = TTERMINATED;
		/* passage au contexte suite suite a la sortie de la fonction */
		/* on ne peut continuer car le ctx passé en parametre ne correspond plus
		 * a celui auqu'il faut revenir puisque la fonction est terminé, 
		 * ce contexte n'existe plus. yield permet de repartir dans le prochain
		 * contexte valide....
		 * ce contexte sera retiré du ctx_ring.
		 */
		yield();
	}

	/* le nouveau contexte devient l'actuel */
	current_ctx = ctx;
	irq_enable();

	/* charge le nouveau contexte */
	load_ctx(ctx);
}

/* creation d'un nouveau contexte et ajout a l'ordonnanceur */
int create_ctx(int stacksize, func_t f, void *args) {
	/* creation du nouveau context ctx */
	struct ctx_s* ctx = malloc(sizeof(struct ctx_s));
	if (!ctx)
		return RETURN_FAILURE;

	/* initialisation selon les params données */
	if (init_ctx(ctx, stacksize, f, args))
		return RETURN_FAILURE;

	/* l'ordonnanceur n'a pas de tache */
	if (!ctx_ring) {
		/* il boucle sur lui meme */
		irq_disable();
		ctx->ctx_next = ctx;
		ctx_ring = ctx;
		irq_enable();
	} else {
		irq_disable();
		/* chainage des contextes */
		/* ajout du ctx_ring->ctx_next dans le context actuel */
		ctx->ctx_next = ctx_ring->ctx_next;
		/* ajout du nouveau contexte dans le ctx_next de ctx_ring */
		ctx_ring->ctx_next = ctx;
		irq_enable();
	}
	ctx->ctx_status = RREADY;
	ctx->ctx_magic = MAGIC;
	return RETURN_SUCCESS;
}

/* fonction de changement de contexte */
/* Ajout du code pour gerer les contextes stopped */
void yield() {
	struct ctx_s* inter_ctx;
	struct ctx_s* ctx;
	if (DEBUG)
	fprintf(stdout,"\nYield()");
	if (current_ctx != NULL) {
		/* passage au contexte suivant non bloqué */
		if (DEBUG){
		printf("\nyield-current_ctx: %p, status: %s ebp: %p esp: %p\n", (void*) current_ctx,
				statestrings[current_ctx->ctx_status],(void *)current_ctx->ctx_ebp,(void *)current_ctx->ctx_esp );
		printf("yield-current_ctx+1: %p, status: %s ebp:%p esp:%p\n",
				(void*) current_ctx->ctx_next,
				statestrings[current_ctx->ctx_next->ctx_status],(void *)current_ctx->ctx_ebp,(void *)current_ctx->ctx_esp );
		}
		ctx = current_ctx->ctx_next;
		while (ctx->ctx_status == STOPPED) {
			if (inter_ctx == NULL) {
				inter_ctx = ctx;
				ctx = ctx->ctx_next;
			} else if (inter_ctx == ctx) {
				printf("\n situation d'interblocage, sortie (yield)!\n");
				printf("-current: %p, status: %s\n", (void*) current_ctx,
									statestrings[current_ctx->ctx_status]);

				printf("-ctx: %p, status: %s\n", (void*) ctx,
									statestrings[ctx->ctx_status]);
				printf("-inter_ctx: %p, status: %s\n", (void*) inter_ctx,
						statestrings[inter_ctx->ctx_status]);
				printf("-next ctx: %p, status %s %i \n", (void*) ctx->ctx_next,
						statestrings[ctx->ctx_next->ctx_status],ctx->ctx_next->ctx_status);
				exit(RETURN_FAILURE);
			}
		} /* passage au prochain context non stoppé */
		if (DEBUG)
		fprintf(stdout,"\nYield:switch_to_ctx(ctx)=%p;", (void*) ctx);
		switch_to_ctx(ctx);
	} else {
		/* aucun current_ctx */
		if (DEBUG)
		fprintf(stdout,"\nYield: aucun current_ctx switch_to_ctx(ctx_ring)=%p;", (void*) ctx_ring);
		save_to_ctx(ctx_ring);
		switch_to_ctx(ctx_ring);
	}
}




/* scheduler: chgt de contexte par interruption */
void start_sched() {
	start_hw();
	/*setup_irq(TIMER_IRQ, yield);*/
	setup_irq(TIMER_IRQ, changer);

	while (1)
		pause();
}

/* suppression de la stack du context suivant
 * suppression du context suivant
 * chainage du ctx->next sur ctx
 */
void remove_next(struct ctx_s *ctx) {
	irq_disable();
	/*plus de contexte  a traiter sortie de l'ordonnanceur*/
	if (ctx->ctx_next == ctx) {
		exit(RETURN_SUCCESS);
	}

	/*le prochain contexte sera le prochain, prochain*/
	free(ctx->ctx_next->ctx_zone);
	free(ctx->ctx_next);

	ctx->ctx_next = ctx;
	ctx->ctx_next = ctx->ctx_next->ctx_next;


	irq_enable();
}

/* Init du semaphore avec le nb de ressources val */
void sem_init(struct sem_s* sem, unsigned int val,char* name) {
	sem->cpt = val;
	sem->context = NULL;
	sem->name =name;
}

/* consommateur de ressources */
void sem_down(struct sem_s* sem) {
	/* code critique = modification de la liste des contextes bloqués */
	irq_disable();
	sem->cpt--;
	if (sem->cpt < 0) {
		if (current_ctx->ctx_next == current_ctx) {
			printf("\nSortie a cause d un interblocage (sem down)");
			exit(EXIT_FAILURE);
		}
		/* pas de ressources, alors le context prend l'etat 
		 * STOPPED, le context courant est ajouté a la liste de context bloqué
		 * dans le semaphore
		 */
		current_ctx->ctx_status = STOPPED;
		fprintf(stdout,"\nSem_Down:%s Stop: %p",sem->name,(void*)current_ctx);
		current_ctx->sem_next = sem->context;
		sem->context = current_ctx;

		/* fin de code critique, cas ou cpt< 0*/
		irq_enable();
		/* process actuel stoppe, passage au suivant */
		yield();
	}
	/* fin de code critique, cas ou cpt> 0*/
		irq_enable();
}

/* producteur de ressources */
void sem_up(struct sem_s* sem) {
	struct ctx_s * temp_ctx;

	/* code critique = modification de la liste des contextes bloqués */
	irq_disable();
	sem->cpt++;
	if (sem->cpt <= 0) {
		temp_ctx=malloc(sizeof(struct ctx_s));
		/* permet a la tache bloqué de repartir*/
		sem->context->ctx_status = STARTED;
		fprintf(stdout,"\nSem_up: %s Started: %p",sem->name,(void*)sem->context);
		/* sauvegarde du contexte n+1 */
		temp_ctx = sem->context->sem_next;
		/* suppression de l'appartenance au semaphore*/
		sem->context->sem_next = NULL;
		free(sem->context->sem_next);
		/* ajout du context n+1 suivant dans la liste du semaphore*/
		sem->context = temp_ctx;
	}
	irq_enable();

}

void changer() {
	printf("\n>>> on change de contexte !!! <<<\n");
	yield();
}
