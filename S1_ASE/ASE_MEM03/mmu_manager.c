#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "hardware.h"
#include "mi_syscall.h"
#include "mmu_manager.h"

extern void user_process();

static FILE *swap_file;

static void empty_it() {
	return;
}
static struct vm_mapping_s vm_mapping[VM_PAGES];
static struct pm_mapping_s pm_mapping[PM_PAGES];

int default_page_number = 0;
unsigned int mapped_page;

void print_default_page() {
	printf("Default page number : %d\n", default_page_number);
}

void reset_default_page() {
	default_page_number = 0;
}

/* Exercice 8 */
void mmuhandler() {
	unsigned int vaddr, ppage_current, vpage_current;
	unsigned int mapped_page;
	struct tlb_entry_s tlbe;
	current_process = 1;
	mapped_page = 1;
	default_page_number++;
	/* @ non trouvée  */
	vaddr = _in(MMU_FAULT_ADDR);
	if (DEBUG)
		fprintf(stdout, "\nF mmuhanlder: @ en default %u", vaddr);

	/*
	 * Adresse fautive non trouvée,
	 * sauvegarde de la page actuellement en mémoire dans le swap
	 * chargement de l'adresse demandée
	 * mise a jour du TLB
	 */

	if ((vaddr < *((int*) &virtual_memory))
			&& (vaddr > (*((int*) &virtual_memory) + VM_SIZE - 1))) {
		fprintf(stderr, "\nMySegFault");
		exit(EXIT_FAILURE);
	}

	ppage_current = ppage_of_vaddr(current_process, vaddr);
	vpage_current = vpage_of_vaddr(current_process, vaddr);

	/*
	 if (ppage==-1)
	 { fprintf(stderr,"\nErreur segmentation.\n");
	 exit(EXIT_FAILURE);
	 }
	 */

	/* addresse pas dans tlb mais presente dans le tableau des pages mappees */
	if (vm_mapping[vpage_current].vmm_ismapped) {
		if (DEBUG)
			fprintf(stdout, "\nF mmuhanlder: @ en default %u vmm_ismapped",
					vaddr);

		tlbe.tlb_vpage = vpage_current;
		tlbe.tlb_ppage = vm_mapping[vpage_current].vmm_page;
		tlbe.tlb_access = 7;
		tlbe.tlb_isactive = 1;
		/* chargement de l entree dans la MMU */
		_out(TLB_ADD_ENTRY, *(int*) &tlbe);

	} else {
		/*  assurer le mapping de vm avec pm */

		if (pm_mapping[ppage_current].pmm_ismapped) {
			if (DEBUG)
				fprintf(stdout, "\nF mmuhanlder: @ en default %u pvmm_ismapped",
						vaddr);

			/* on a l '@ virtuelle de la page physique, mais elle n'est pas mappee */
			/*faisage de place, on vire une page memoire phys dans le swap */
			store_to_swap(pm_mapping[mapped_page].pmm_page, mapped_page);
			/* elle n'est plus mappee en virtuel */
			pm_mapping[mapped_page].pmm_ismapped = 0;
			/* ni en physique */
			vm_mapping[pm_mapping[mapped_page].pmm_page].vmm_ismapped = 0;
			/* suppression de la page virée dans la table de la mmu */
			tlbe.tlb_vpage = pm_mapping[mapped_page].pmm_page;
			_out(TLB_DEL_ENTRY, *(int*) &tlbe);
		}

		/*  on charge en memoire vpage dans la ppage libérée */
		if (fetch_from_swap(vpage_current, mapped_page)) {
			printf("fetch not found\n");
		}

		/* maj de vm_mapping avec les infos de la page chargée next_ppage */
		vm_mapping[vpage_current].vmm_page = mapped_page;
		vm_mapping[vpage_current].vmm_ismapped = 1;
		pm_mapping[mapped_page].pmm_page = vpage_current;
		pm_mapping[mapped_page].pmm_ismapped = 1;

		/* Maj de l'entrée dans la mmu */
		tlbe.tlb_vpage = vpage_current;
		tlbe.tlb_ppage = mapped_page;
		tlbe.tlb_access = 7;
		tlbe.tlb_isactive = 1;
		/* tlb je prend son adresse (ptr) je le cast en pointeur d'entier et je le déréference => adr */
		_out(TLB_ADD_ENTRY, *(int*) &tlbe);

		/* prochaine page a utiliser */
		mapped_page = (mapped_page + 1);
		if (mapped_page == PM_PAGES)
			mapped_page = 1;
	}
}
/* retourne la page physique a partir de la page virtuelle connue de la mmu*/
int ppage_of_vaddr(int process, unsigned vaddr) {
	unsigned int vpage;
	struct tlb_entry_s* tlb_entries;
	unsigned entries;
	int i;

	if (DEBUG)
		fprintf(stdout, "\nF ppage_of_vpage(%u)", vaddr);
	if (vaddr > VMEM_END || vaddr < VMEM_BEGIN)
		return -1;

	/* calculer le vpage -> 12 bits de poids fort */
	vpage = (vaddr >> 12) & 0xFFF;
	/* vpage -> valide ? */
	if (vpage > N / 2 || vpage < 0)
		return -1;

	/* */
	entries = _in(TLB_ENTRIES);
	tlb_entries = (struct tlb_entry_s*) (&entries);

	for (i = 0; i < TLB_SIZE; i++) {
		if (tlb_entries[i].tlb_vpage == vpage) {
			return tlb_entries[i].tlb_ppage;
		}
	}
	if (DEBUG)
		fprintf(stdout, "\nF ppage_of_vpage(%u) not found", vaddr);
	return -1;
}

/* initialisation du fichier de swap */
static char init_swap(const char *path) {
	swap_file = fopen(path, "w+");
	return swap_file != NULL ? 0 : -1;

}

/* envoi de la memoire vers le swap */
static char store_to_swap(int vpage, int ppage) {

	/* positionnement a la page correcte dans le swap */
	if (fseek(swap_file, vpage * PAGE_SIZE, SEEK_SET) == -1) {
		return -1;
	}

	if (fwrite((void*) ((char*) physical_memory + ppage * PAGE_SIZE),
	PAGE_SIZE, 1, swap_file)) {
		return -1;
	}
	return 0;
}

/* charge la memoire depuis le swap */
static char fetch_from_swap(int vpage, int ppage) {

	/* positionnement a la page correcte dans le swap */
	if (fseek(swap_file, vpage * PAGE_SIZE, SEEK_SET) == -1) {
		return -1;
	}

	if (fread((void*) ((char*) physical_memory + ppage * PAGE_SIZE),
	PAGE_SIZE, 1, swap_file)) {
		return -1;
	}
	return 0;
}

/* retourne le numero de page virtuelle de vaddr */
int vpage_of_vaddr(int current_process, unsigned int vaddr) {
	return (vaddr >> 12) & 0xFFF;
}

int main(int argc, char **argv) {
	unsigned int status = 0;
	unsigned int i;
	char* hw_config;

	hw_config = getenv("HW_CONFIG");
	hw_config = hw_config ? hw_config : DEFAULT_HW_CONFIG;

	/* Met le microprocesseur en mode maitre */
	puts("Initialisation du matériel ...");
	status = init_hardware(hw_config);
	if (!status) {
		fprintf(stderr, "\nError in hardware initialization");
		exit(EXIT_FAILURE);
	}

	/* Prépare les interruptions */
	puts("Préparation des interruptions...");
	for (i = 0; i < IRQ_VECTOR_SIZE; i++) {
		IRQVECTOR[i] = empty_it;
	}

	_out(MMU_PROCESS, 1);
	if (init_swap("swap") == -1) {
		fprintf(stderr, "\nError in swap initialization");
		exit(EXIT_FAILURE);
	}

	puts("Initialisation terminée\n");

	/* init_hardware() */
	IRQVECTOR[MMU_IRQ] = mmuhandler;
	IRQVECTOR[DFT_PAG] = print_default_page;
	IRQVECTOR[RST_DFT_PAG] = reset_default_page;

	_mask(0x1001);

	user_process();
	return 1;
}

