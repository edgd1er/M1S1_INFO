#define SUPER_MAGIC 0x01234567
#define FB_MAGIC    0x76543210

struct sblock_s{
	unsigned int sb_magic;
	unsigned int sb_num_serial;
	char sb_name[32];
	unsigned int sb_root;
	unsigned int sb_first_fb;
	unsigned int sb_freesize;
};

struct freebloc_s{
	unsigned int fb_next;
	unsigned int size;
	unsigned int fb_magic;
};

extern struct sblock_s sb;

void init_super(unsigned int vol, const char* name);
unsigned int load_super(unsigned int vol);
void save_super();
unsigned int new_bloc();
void free_bloc(unsigned int bloc);
unsigned int get_current_volume();
void init_current_volume();
unsigned int get_freespace();
unsigned initialize_bloc(unsigned numbloc);
