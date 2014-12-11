#ifndef _SEM_H_
#define _SEM_H_

#define SEM_MAGIC 0xFADEBEEF

struct sem_s
{
    int sem_cptr;
    struct ctx_s* sem_ctx_locked;
    unsigned int sem_magic;
};


void sem_init(struct sem_s* sem, unsigned int val);

void sem_down(struct sem_s* sem);

void sem_up(struct sem_s* sem);

#endif
