#include "hardware.h"
#include "mi_syscall.h"
#include "mi_kernel.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>


static int 
sum(void *ptr) 
{
    int i;
    int sum = 0;
    
    for(i = 0; i < PAGE_SIZE * N/2 ; i++)
        sum += ((char*)ptr)[i];
    return sum;
}


int inituser() 
{
    void *ptr;
    int res;

    ptr = virtual_memory;
    printf("init !!\n");
    _int(16);
    printf("after switch_to_process0 %p \n",ptr);
    memset(ptr, 1, PAGE_SIZE * N/2);
    _int(17);
    printf("after switch_to_process1 %p \n",ptr);
    memset(ptr, 3, PAGE_SIZE * N/2);

    _int(16);
    res = sum(ptr);
    printf("Resultat du processus 0 : %d\n",res);
    _int(17);
    res = sum(ptr);
    printf("Resultat processus 1 : %d\n",res);
    return EXIT_SUCCESS;
}

