#define MBR_MAGIC 0xCAFEBABE

#define Max_Vol 8

enum volume_type_e { VT_STD,VT_EXTEND,VT_OTHER,VT_FREE };

extern struct mbr_s mbr;


struct volume_s{
  enum volume_type_e vol_type;
  unsigned int vol_first_cylinder;
  unsigned int vol_first_sector;
  unsigned int vol_nsector;
};


struct mbr_s {
  struct volume_s mbr_vol[Max_Vol];
  int nbrvolumes;
  unsigned int mbr_magic;
};


int load_mbr();
int verif_mbr_size();
int newvolume(unsigned int cyl, unsigned int sec, unsigned int size);
int deletevolume(unsigned int volume);
void display_volume();
int libre(unsigned int cyl,unsigned int sec,unsigned int nbsec);
int checkVolume(unsigned int volume);
int checkBloc(unsigned int volume, unsigned int bloc);

void save_mbr();

int get_cylinder_of_bloc(unsigned int volume,unsigned int bloc);
int get_sector_of_bloc(unsigned int volume,unsigned int bloc);

void read_bloc(unsigned int vol, unsigned int nbloc,unsigned char *buffer);
void write_bloc(unsigned int vol, unsigned int nbloc,const unsigned char *buffer);
void read_bloc_n(unsigned int vol, unsigned int nbloc,unsigned char *buffer,unsigned size);
void write_bloc_n(unsigned int vol, unsigned int nbloc,const unsigned char *buffer,unsigned size);
void format_bloc(unsigned int volume);
