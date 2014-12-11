/* -----------------------------------------------------------
   $Id: mknfs 2014/11/03 07:16:29 dubiez Exp $
   -----------------------------------------------------------

   make new file system.
   Francois Dubiez, 10/2014

 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <assert.h>
#include <stdarg.h>
#include "hardware.h"
#include "drive.h"
#include "mbr.h"
#include "super.h"

unsigned int current_vol;

/* init super bloc of the $CURRENT_VOLUME
set current_volume accordingly */


int main(int argc, char **argv)
{
      init();
      load_mbr();
      init_current_volume();
}
