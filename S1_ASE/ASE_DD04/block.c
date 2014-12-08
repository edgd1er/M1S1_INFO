#include "block.h"
#include "mbr.h"

unsigned int new_block(){	
  struct free_block fb;
  unsigned char buffer [SIZE];
  int nb;

  if(sb.sb_first_fb <= 0){
    printf("allocation de bloc impossible : volume plein\n");
    return 0;
  }

  read_block(current_vol,sb.sb_first_fb,buffer);
  fb=*((struct free_block*)buffer);
  /* printf("new block fb.size %d\n",fb.size); */

  if(fb.size == 1){
    nb = sb.sb_first_fb;
    sb.sb_first_fb = fb.fb_next;
  }else if(fb.size > 1){
    fb.size--;
    *((struct free_block*)buffer)=fb;	
    write_block(current_vol,sb.sb_first_fb,buffer);
    nb=sb.sb_first_fb + fb.size;
  }
      	
  sb.size_free--;
  save_super();
  /* printf("new block return : %d\n",nb); */
  return nb;     
}


void free_block(unsigned int block){

	struct free_block fb;
	unsigned char buffer [SIZE];
	if(block==0){
		printf("free block impossible sur le permier bloc (reserve)\n");
		return;
	}
	/* '=' : bloque le free_block pour le super block*/
	if(mbr.disque[current_vol].size-1 <= sb.size_free){
		return;
	}
	/*creation d'un free bloc*/
	fb.fb_next=sb.sb_first_fb;
	fb.size=1;
	sb.sb_first_fb=block;
	sb.size_free++;
	save_super();
	*((struct free_block*)buffer)=fb;
	write_block(current_vol,block,buffer);


}
