#ifndef LIBCONTEXT_H  /* Include guard */
#define LIBCONTEXT_H
#define MAGIC 0xDEADBEEF
#define RETURN_SUCCESS 0
#define RETURN_FAILURE 1

typedef void (*func_t)(void*);

/* Ajout des etats des contextes */
enum ctx_state_e {TEST,RREADY,STARTED,TTERMINATED,STOPPED};


struct ctx_s {
	unsigned int* ctx_esp;
	unsigned int* ctx_ebp;
	unsigned int ctx_magic;
	void* ctx_arg;
	unsigned char* ctx_zone;
	int ctx_started;
	enum ctx_state_e ctx_status;
	func_t ctx_func;
	struct ctx_s* ctx_next;
	struct ctx_s* sem_next;
} ;

struct sem_s {
	int cpt;
	struct ctx_s* context;
	char* name;
};

int create_ctx(int stacksize,func_t f, void *args);
int init_ctx(struct ctx_s *ctx, int stacksize, func_t f, void *args);
void switch_to_ctx(struct ctx_s *ctx);
void yield();
void start_sched();
void remove_next();
void sem_init(struct sem_s *sem , unsigned int val,char* name);
void sem_up(struct sem_s *sem);
void sem_down(struct sem_s *sem);
void changer();

#endif
