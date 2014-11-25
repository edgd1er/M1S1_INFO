#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "context_change.h"

int init_ctx(ctx_s *nctx, int stack_size, func_t f, void *args)
{

	
	if(nctx==NULL)
		nctx=(ctx_s*)malloc(sizeof(ctx_s));

	nctx->ctx_stack=
		(unsigned char*)malloc(stack_size);	
	if(!nctx->ctx_stack)
		return RETURN_FAILURE;

	nctx->ebp=&nctx->ctx_stack[stack_size-4];
	nctx->esp=&nctx->ctx_stack[stack_size-4];
	
	nctx->ctx_f=f;
	nctx->ctx_argu=args;
	nctx->ctx_status=CTX_READY;
	
	nctx->ctx_magic=CTX_MAGIC;

	return RETURN_SUCCESS;
}

void switch_to_ctx(ctx_s *new_ctx)
{

	assert(new_ctx->ctx_magic=CTX_MAGIC);	

	if(ctx_courant!=NULL)
	{
		__asm__("movl %%ebp, %0 \n\t": "=r" (ctx_courant->ebp));
		__asm__("movl %%esp, %0 \n\t": "=r" (ctx_courant->esp));
	}
	

	ctx_courant=new_ctx;
	__asm__("movl %0, %%ebp \n\t"\
	 "movl %1, %%esp \n\t":
	     :"r"(ctx_courant->ebp),"r"(ctx_courant->esp));


	if(ctx_courant->ctx_status==CTX_READY)
	{
		ctx_courant->ctx_status=CTX_ACTIVABLE;
		ctx_courant->ctx_f(ctx_courant->ctx_argu);
		ctx_courant->ctx_status=CTX_TERMINATED;
	}		
}


