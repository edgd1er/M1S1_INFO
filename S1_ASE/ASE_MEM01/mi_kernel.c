#include "hardware.h"
#include "mi_syscall.h"
#include "mi_kernel.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>


static void empty_it() { return; }

void mmuhandler(){
  int vaddr;
  int ppage;
  struct tlb_entry_s tlbe;
  vaddr=_in(MMU_FAULT_ADDR);
  ppage=ppage_of_vaddr(current_process,vaddr);
  if (ppage==-1) 
  { fprintf(stderr,"Erreur segmentation.\n");
    exit(EXIT_FAILURE);
  }
  tlbe.tlb_rfu=0; /*Reserved for future use */
  tlbe.tlb_vpage=(vaddr>>12)&0xFFF;
  tlbe.tlb_ppage=ppage;
  tlbe.tlb_access=7;
  tlbe.tlb_isactive=1;
  _out(TLB_ADD_ENTRY,*(int *)&tlbe);/*Ce qui est pointé par l adresse d un entier*/
  /* tlb je prend son adresse (ptr) je le cast en pointeur d'entier et je le déréference => adr */
}


int main(int argc, char **argv) 
{
    unsigned int status=0;
    unsigned int i;
    char* hw_config;

    hw_config = getenv("HW_CONFIG");
    hw_config = hw_config ? hw_config : DEFAULT_HW_CONFIG;

	/* Met le microprocesseur en mode maitre */
	puts("Initialisation du matériel ...");
	status = init_hardware(hw_config);
	if (!status)
		{printf("error in hardware initialization with %s\n", hw_config);}


	/* Prépare les interruptions */
	puts("Préparation des interruptions...");
	for(i = 0; i < IRQ_VECTOR_SIZE; i++)
	{
		IRQVECTOR[i] = empty_it;
	}

	puts("Initialisation terminée\n");

    /* init_hardware() */
    IRQVECTOR[MMU_IRQ] = mmuhandler;
    IRQVECTOR[16] = switch_to_process0;
    IRQVECTOR[17] = switch_to_process1;
    _mask(0x1001);

    inituser();
    return 1;
}



void switch_to_process0(void) 
{
    current_process = 0;
    _out(MMU_CMD, MMU_RESET);
}

void switch_to_process1(void) 
{
    current_process = 1;
    _out(MMU_CMD, MMU_RESET);
}

int ppage_of_vaddr(int process, unsigned vaddr){
	unsigned int vpage;
	if ( vaddr > VMEM_END || vaddr < VMEM_BEGIN ) return -1;


	/* no de page dans le PF de l adresse */
	vpage =(vaddr>>12)& 0xFFF;
	/* calcul de l'adresse physique pour le process concerne */
	return process*N/2+1+vpage;
}
