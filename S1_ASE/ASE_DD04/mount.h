/* ------------------------------
   $Id: mount.h,v 1.1 2009/11/16 05:38:07 marquet Exp $
   ------------------------------------------------------------

   Initialization and finalization
   Philippe Marquet, Nov 2009
   
*/

#ifndef _MOUNT_H_
#define _MOUNT_H_

#ifdef SOL
#   include "mbr+sol.h"
#   include "super+sol.h"
#else
/*#   error "Add your own include directives"*/
#endif

/*  initialize hardware, mount the "current" volume
    configuration with the $HW_CONFIG and $CURRENT_VOLUME environment
    variables. 
 */
void mount();
void umount();

#endif