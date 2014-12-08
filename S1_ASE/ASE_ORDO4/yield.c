#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include "yield.h"
#include "hw.h"

static struct ctx_s* ctxs = NULL;
struct ctx_s* ctx_current = NULL;


void switch_to_ctx(struct ctx_s *ctx)
{
    if(ctx_current)
    {
        asm("mov %%esp, %0" "\n\t" "mov %%ebp, %1"
            : "=r" (ctx_current->ctx_esp), "=r" (ctx_current->ctx_ebp));
    }

    ctx_current = ctx;

    assert(ctx_current->ctx_state != CTX_FINISHED);

    asm("mov %0, %%esp" "\n\t" "mov %1, %%ebp"
        :
        : "r" (ctx_current->ctx_esp), "r" (ctx_current->ctx_ebp));

    if(ctx_current->ctx_state == CTX_INITIALIZED)
    {
        ctx_current->ctx_state = CTX_RUNNING;
        irq_enable();
        ctx_current->ctx_f(ctx_current->ctx_args);
        ctx_current->ctx_state = CTX_FINISHED;
        yield();
    }
    else
    {
        irq_enable();
        return;
    }
}

int init_ctx(struct ctx_s* ctx, int stack_size, func_t f, void* args)
{
    ctx->ctx_stack = (void*)malloc(stack_size);
    ctx->ctx_f = f;
    ctx->ctx_args = args;
    ctx->ctx_state = CTX_INITIALIZED;
    ctx->ctx_ebp = (char*)(ctx->ctx_stack) + stack_size - sizeof(void*);
    ctx->ctx_esp = ctx->ctx_ebp;
    ctx->ctx_magic = MAGIC;
    ctx->ctx_sem_next = NULL;

    return 0;
}

int create_ctx(int stack_size, func_t f, void* args)
{
    struct ctx_s* new_ctx = malloc(sizeof(struct ctx_s));

    init_ctx(new_ctx, stack_size, f, args);

    if(ctxs)
    {
        new_ctx->ctx_next = ctxs->ctx_next;
        ctxs->ctx_next = new_ctx;
    }
    else
    {
        ctxs = new_ctx;
        ctxs->ctx_next = new_ctx;
    }

    return 0;
}

void yield()
{
    struct ctx_s* ctx_tmp;

    irq_disable();

    fflush(stdout);
    printf("----------YIELD----------\n");

    if(ctx_current)
    {
      ctx_tmp = ctx_current->ctx_next;

      while((ctx_tmp->ctx_state == CTX_FINISHED || ctx_tmp->ctx_state == CTX_LOCKED)
        && ctx_tmp != ctx_current)
      {
          if(ctx_tmp->ctx_state == CTX_FINISHED)
	        {
              ctx_current->ctx_next = ctx_tmp->ctx_next;
              free(ctx_tmp->ctx_stack);
              free(ctx_tmp);
              ctx_tmp = ctx_current->ctx_next;
          }
          else
          {
              ctx_tmp = ctx_tmp->ctx_next;
          }
      }

        if(ctx_tmp->ctx_state != CTX_FINISHED)
        {
            if(ctx_tmp->ctx_state != CTX_LOCKED)
                switch_to_ctx(ctx_tmp);
        }
        else
        {
            irq_enable();
            exit(0);
        }
    }
    else
    {
        assert(ctxs);
        switch_to_ctx(ctxs);
    }

    irq_enable();
}
