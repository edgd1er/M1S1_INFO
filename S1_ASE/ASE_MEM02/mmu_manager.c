#include "hardware.h"
#include "mi_syscall.h"
#include "mmu_manager.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

extern void user_process();

static FILE *swap_file;

static void empty_it() { return; }
static struct vm_mapping_s vm_mapping[VM_PAGES];
static struct pm_mapping_s pm_mapping[PM_PAGES];

int default_page_number = 0;

void print_default_page(){
	printf("Default page number : %d\n",default_page_number);
}

void reset_default_page(){
	default_page_number = 0;
}

/* Exercice 8 */
void mmuhandler(){
  unsigned int vaddr, ppage,vpage ;
  unsigned int mapped_page;
  struct tlb_entry_s tlbe;
  current_process = 1;
  mapped_page=0;
  default_page_number++;

  vaddr=_in(MMU_FAULT_ADDR);
  if (DEBUG)
  fprintf(stdout,"F mmuhanlder");

  /*
   * Adresse fautive non trouvée,
   * sauvegarde de la page actuellement en mémoire dans le swap
   * chargement de l'adresse demandée
   * mise a jour du TLB
   */

  /*
  if ((vaddr< *((int*)&virtual_memory)) && (vaddr> (*((int*)&virtual_memory) + VM_SIZE -1)))
  {
	  fprintf(stderr,"\nMySegFault");
	  exit(EXIT_FAILURE);
  }*/

  ppage=ppage_of_vaddr(current_process,vaddr);
  vpage=vpage_of_vaddr(current_process,vaddr);

  if (ppage==-1)
    { fprintf(stderr,"\nErreur segmentation.\n");
      exit(EXIT_FAILURE);
    }

  /* envoi de la page memoire dans le swap */
  store_to_swap(mapped_page,1);
  /* recuperation de la page memoire depuis le swap */
  fetch_from_swap(vpage_current,1);
  mapped_page=vpage_current;

  /* pour l'instant, une seule page physique */
  tlbe.tlb_ppage=1;

  _out(TLB_DEL_ENTRY,*((int*)&tlbe));

  /* pour l'instant, une seule page physique */
  tlbe.tlb_ppage=1;
  /* Reserved for future use */
  tlbe.tlb_rfu=0;
  tlbe.tlb_vpage=vpage_current;
  tlbe.tlb_access=7;
  tlbe.tlb_isactive=1;
  _out(TLB_ADD_ENTRY,*(int *)&tlbe);/*Ce qui est pointé par l adresse d un entier*/
  /* tlb je prend son adresse (ptr) je le cast en pointeur d'entier et je le déréference => adr */
}


/* retourne la page physique a partir de la page virtuelle */
int ppage_of_vaddr(int process, unsigned vaddr) {
	unsigned int vpage;
	struct tlb_entry_s* tlb_entries;
	unsigned entries;
	int i;

	if (DEBUG)
	fprintf(stdout,"\nF ppage_of_vpage(%u)",vaddr);
	if (vaddr > VMEM_END || vaddr < VMEM_BEGIN)
		return -1;

	/* calculer le vpage -> 12 bits de poids fort */
	vpage = (vaddr >> 12) & 0xFFF;
	/* vpage -> valide ? */
	if (vpage > N / 2 || vpage < 0)
		return -1;

	/* */
	entries= _in(TLB_ENTRIES);
	tlb_entries = (struct tlb_entry_s*) (&entries);

	for (i = 0; i < TLB_SIZE; i++) {
		if (tlb_entries[i].tlb_vpage == vpage) {
			return tlb_entries[i].tlb_ppage;
		}
	}
	return -1;
}


/* initialisation du fichier de swap */
static char init_swap(const char *path){
	swap_file=fopen(path,"w+");
	return swap_file!=NULL?0:-1;

}

/* envoi de la memoire vers le swap */
static char store_to_swap(int vpage, int ppage){

	/* positionnement a la page correcte dans le swap */
	if (fseek(swap_file,vpage*PAGE_SIZE,SEEK_SET)==-1){
		return -1;	
	}

	if (fwrite((void*)((char*)physical_memory+ppage*PAGE_SIZE),1*PAGE_SIZE,1*PAGE_SIZE,swap_file))
		{return -1;}
	return 0;
}

/* charge la memoire depuis le swap */
static char fetch_from_swap(int vpage, int ppage){

	/* positionnement a la page correcte dans le swap */
	if (fseek(swap_file,vpage*PAGE_SIZE,SEEK_SET)==-1){
		return -1;	
	}

	if (fread((void*)((char*)physical_memory+ppage*PAGE_SIZE),1*PAGE_SIZE,1*PAGE_SIZE,swap_file))
		{return -1;}
	return 0;
}

/* retourne le numero de page virtuelle de vaddr */
int vpage_of_vaddr(int current_process,unsigned int vaddr){
	return (vaddr >> 12) & 0xFFF;
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
		{fprintf(stderr, "\nError in hardware initialization");
				exit(EXIT_FAILURE);}

	/* Prépare les interruptions */
	puts("Préparation des interruptions...");
	for(i = 0; i < IRQ_VECTOR_SIZE; i++)
	{
		IRQVECTOR[i] = empty_it;
	}

	_out(MMU_PROCESS,1);
		if(init_swap("swap")) {
			fprintf(stderr, "\nError in swap initialization");
			exit(EXIT_FAILURE);
		}

	puts("Initialisation terminée\n");

    /* init_hardware() */
    IRQVECTOR[MMU_IRQ] = mmuhandler;
    _mask(0x1001);

    user_process();
    return 1;
}

