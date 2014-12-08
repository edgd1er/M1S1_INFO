/* ------------------------------
   $Id: inode.h,v 1.2 2009/11/17 09:44:12 marquet Exp $
   ------------------------------------------------------------

   Inode manipulation interface.
   Philippe Marquet, Nov 2009
   
*/

#ifndef _INODE_H_
#define _INODE_H_

#include "hardware.h"
#include "drive.h"
#include "mbr.h"
#include "super.h"
#include "tools.h"
 
#define N_DIRECT HDA_SECTORSIZE/4-4
#define N_DIRECT2 		1
#define BLOC_SIZE       HDA_SECTORSIZE
#define BLOC_SIZET
#define DATA_BLOC_SIZE  BLOC_SIZE
#define INODE_MAGIC 0x0FACADE00

/* different kind of files */
enum file_type_e {FILE_FILE, FILE_DIRECTORY, FILE_SPECIAL};

/* inode */
struct inode_s {
    	enum file_type_e type;
        unsigned int size;      /* in octets */
    	unsigned int direct[N_DIRECT];
    	unsigned int indirect;
    	unsigned int d_indirect;
};

/* a bloc full of zeros */
#define BLOC_NULL 0

extern unsigned int dbg;
unsigned int current_vol;

/* inodes i/o */
void read_inode(unsigned int inumber, struct inode_s* inode);
void write_inode(unsigned int inumber, const struct inode_s *inode);
unsigned int initialize_bloc(unsigned int bloc);
void initialize_inode(struct inode_s* inode, enum file_type_e type);

/* inodes creation/deletion.
   The creation return a inumber */
unsigned int create_inode(enum file_type_e type); 
int delete_inode(unsigned int inumber);
void free_indirect(unsigned int i_d);

/* return the bloc index on the volume of a given bloc index in a
   file.  Return BLOC_NULL for a bloc full of zeros.
   If do_allocate, allocate blocs if needed; return BLOC_NULL if no
   allocation was possible.  */  
unsigned int vbloc_of_fbloc(unsigned int inumber, unsigned int fbloc,
                            bool_t do_allocate); 

#endif
