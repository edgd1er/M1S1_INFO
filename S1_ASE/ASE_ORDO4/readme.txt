Synchronisation entre contextes

Exercice 12  

*En remarquant qu’un contexte donnée ne peut être bloqué que dans une unique file d’attente d’un sémaphore, étendez la structure de données associée à un contexte pour gérer les files d’attente des sémaphores.
 
* Donnez la déclaration de la structure de donnée associée à un sémaphore.
struct sem_s {
	int cpt;
	struct ctx_s* context;
};



*Proposez une implantation de la primitive
        void sem_init(struct sem_s *sem, unsigned int val);

/* suppression de la stack du context suivant
 * suppression du context suivant
 * chainage du ctx->next sur ctx
*/
void remove_next(struct ctx_s *ctx){
	irq_disable();
	/*plus de contexte  a traiter sortie de l'ordonnanceur*/
	if (ctx->ctx_next==ctx)
	{
		exit(RETURN_SUCCESS);
	}

	/*le prochain contexte sera le prochain, prochain*/
	free(ctx->ctx_next->ctx_zone);
	free(ctx->ctx_next);
	ctx->ctx_next=ctx;
	irq_enable();
}

/* Init du semaphore avec le nb de ressources val */
void sem_init(struct sem_s* sem, unsigned int val)
{
	sem=malloc(sizeof(struct sem_s));
	sem->cpt=val;
	sem->context=NULL;
}

Exercice 13

*Proposez une implantation des deux primitives

    void sem_down(struct sem_s *sem);
    void sem_up(struct sem_s *sem);


/* consommateur de ressources */
void sem_down(struct sem_s* sem)
{
	/* code critique = modification de la liste des contextes bloqués */
	printf("-sem_down: %d (current: %p, next ctx: %p)\n",sem->cpt-1,(void*)current_ctx->ctx_esp,(void*) current_ctx->ctx_next->ctx_esp);
	irq_disable();
	sem->cpt--;
	if(sem->cpt<0)
		{
		  if (current_ctx->ctx_next == current_ctx)
		    {
		      printf("sortie a cause d un interblocage (sem) \n");
		      exit(-1);
		    }
		/* pas de ressources, alors le context prend l'etat 
		 * STOPPED, le context courant est ajouté a la liste de context bloqué
		 * dans le semaphore
		 */
		current_ctx->ctx_status=STOPPED;
		sem->context=current_ctx;
		current_ctx->sem_next=sem->context;
		/* fin de code critique, cas ou cpt< 0*/
		irq_enable();
		/* pas d'interruption dans les semaphores */
		/*yield();*/
		}
		else
		{
		/* fin de code critique, cas ou cpt> 0*/
			irq_enable();
		}
}

/* producteur de ressources */
void sem_up(struct sem_s* sem)
{
	struct ctx_s * temp_sem;
	/*-temp_sem=malloc(sizeof(struct ctx_s));*/
	/* code critique = modification de la liste des contextes bloqués */
	printf("-sem_up: %d (current: %p, next ctx: %p)\n",sem->cpt+1,(void*)current_ctx->ctx_esp,(void*)current_ctx->ctx_next->ctx_esp);
	irq_disable();
	sem->cpt++;
	if (sem->cpt<=0)
		{
		/* permet a la tache bloqué de repartir*/
		sem->context->ctx_status=STARTED;
		/* sauvegarde du contexte n+1 */
		temp_sem=sem->context->sem_next;
		/* suppression de l'appartenance au semaphore*/
		sem->context->sem_next=NULL;
		free(sem->context->sem_next);
		/* ajout du context n+1 suivant dans la liste du semaphore*/
		sem->context=temp_sem;

		}
	irq_enable();
}



Exercice 14
L’académique et néanmoins classique problème des philosophes est le suivant : cinq philosophes attablés en cercle autour d’un plat de spaghettis mangent et pensent alternativement sans fin (faim ?). Une fourchette est disposée entre chaque couple de philosophes voisins. Un philosophe doit préalablement s’emparer des deux fourchettes qui sont autour de lui pour manger.

On désire élaborer une solution à ce problème en attachant un contexte à l’activité de chacun des philosophes et un verrou à chacune des fourchettes.

* Montrez qu’une solution triviale peut mener à un interblocage, aucun des philosophes ne pouvant progresser.

Chaque philosphe prendra la fourchette disponible a sa droite (verrou de ce philosphe sur la fourchette) et attendra que son voisin pose sa fourchette, ce qu'il ne fera pas. On arrive a une situation ou chaque philosophe a une fourchette (verrou) dans sa main et est en attente que son voison pose la sienne. Le système est alors bloqué.

Exercice 15
* Comment le système peut-il prévenir de tels interblocages ?

On considérera que

    un contexte est bloqué sur un verrou ;
    un verrou bloque un ensemble de contextes ;
    un contexte détient un ensemble de verrous. 

Une solution est de limiter le nombre de philososphes qui seront autorisés a manger en meme temps (4). il restera donc une fourchette qui permettra a un philosophe de manger puis de poser ses fourchettes. Il n'y aura pas de situation d'interblocage.

une autre solution est de permettre a un philosophe de prendre la fourchette de gauche en premier 
, ou parmi 4 gauchers d'avoir un droitier.

Considérez aussi les situations dans lesquelles toutes les activités ne participent pas à l’interblocage. Par exemple, une sixième activité indépendante existe en dehors des cinq philosophes.

On modifie l’interface de manipulation des verrous pour que le verrouillage retourne une erreur en cas d’interblocage :

    void mtx_init(struct mtx_s *mutex);
    int mtx_lock(struct mtx_s *mutex);
    void mtx_unlock(struct mtx_s *mutex);


Exercice 16   Donner une implémentation de ces primitives détectant les interblocages. 


