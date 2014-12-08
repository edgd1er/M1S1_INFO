#include <stdlib.h>
#include <assert.h>
#include <stdio.h>
#include "hw.h"
#include "sem.h"
#include "yield.h"

void sem_init(struct sem_s* sem, unsigned int val)
{
    sem->sem_cptr = val;
    sem->sem_magic = SEM_MAGIC;
    sem->sem_ctx_locked = NULL;
}

void sem_down(struct sem_s* sem)
{
    irq_disable();
    assert(sem->sem_magic == SEM_MAGIC);

    sem->sem_cptr--;

    if(sem->sem_cptr < 0)
    {
      ctx_current->ctx_state = CTX_LOCKED;
      ctx_current->ctx_sem_next = sem->sem_ctx_locked;
      sem->sem_ctx_locked = ctx_current;
      irq_enable();
      yield();
    }

    irq_enable();
}

void sem_up(struct sem_s* sem)
{
    struct ctx_s* ctx_tmp;

    irq_disable();
    assert(sem->sem_magic == SEM_MAGIC);

    sem->sem_cptr++;

    if(sem->sem_cptr <= 0)
    {
        assert(sem->sem_ctx_locked);

        sem->sem_ctx_locked->ctx_state = CTX_RUNNING;

        ctx_tmp = sem->sem_ctx_locked;

        sem->sem_ctx_locked = sem->sem_ctx_locked->ctx_sem_next;

        ctx_tmp->ctx_sem_next = NULL;
    }

    irq_enable();
}
