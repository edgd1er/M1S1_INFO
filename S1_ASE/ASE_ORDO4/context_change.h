#include <stdio.h>
#include <stdlib.h>
#include <setjmp.h>
#include <assert.h>

#define CTX_MAGIC 0xDEADBEEF
#define RETURN_FAILURE -1
#define RETURN_SUCCESS 0

typedef enum
{
	CTX_READY,      
	CTX_ACTIVABLE,  
	CTX_TERMINATED	
}ctx_state_e;

typedef void (func_t)(void*);
	

typedef struct
{
	void *ebp;
	void *esp;

	func_t *ctx_f;
	void *ctx_argu;
	ctx_state_e ctx_status;
		
	unsigned int ctx_magic;
	unsigned char *ctx_stack; 
}ctx_s;

static ctx_s *ctx_courant=NULL;

int init_ctx(ctx_s *nctx, int stack_size, func_t f, void *args);
void switch_to_ctx(ctx_s *new_ctx);
