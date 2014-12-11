#define PAGE_SIZE 4
#define PM_PAGES 256 /* 1<<8 */
#define PM_SIZE PAGE_SIZE*PM_PAGES
#define PM_BEGIN *(int*)&physical_memory
#define PMEM_END *(int*)&physical_memory + PM_SIZE - 1
#define VM_PAGES 4096 /* 1<<12 */
#define VM_SIZE PAGE_SIZE*VM_PAGES
#define VMEM_BEGIN *(int*)&virtual_memory
#define VMEM_END *(int*)&virtual_memory + VM_SIZE - 1
#define TLB_SIZE 32
#define TLB_ENTRIES 0x800 

#define N 254
#define DEBUG 0

#define MMU_IRQ	13
#define MMU_CMD	0x66
#define MMU_FAULT_ADDR 0xCD
#define TLB_ADD_ENTRY 0xCE
#define TLB_DEL_ENTRY 0xDE
#define DEFAULT_HW_CONFIG "etc/hardware.ini"

struct tlb_entry_s {
	unsigned tlb_rfu: 8;
	unsigned tlb_vpage: 12;
	unsigned tlb_ppage: 8;
	unsigned tlb_access: 3;
	unsigned tlb_isactive: 1;
};

struct vm_mapping_s {
	unsigned int vmm_page:8;
	unsigned int vmm_ismapped:1;
};

struct pm_mapping_s {
	unsigned int pmm_page:12;
	unsigned int pmm_ismapped:1;
};

unsigned int current_process;

void mmuhandler();
void switch_to_process0(void);
void switch_to_process1(void);
int ppage_of_vaddr(int process, unsigned vaddr);
int vpage_of_vaddr(int process, unsigned int vaddr);
int inituser();

static char init_swap(const char *path);
static char store_to_swap(int vpage, int ppage);
static char fetch_from_swap(int vpage, int ppage);


void print_default_page();
void reset_default_page();
