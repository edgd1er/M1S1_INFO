# $Id: Makefile,v 1.1 2002/12/06 14:25:18 marquet Exp $
##############################################################################

ROOTDIR=/home/enseign/ASE
ROOTDIR=.

CC	= gcc
CFLAGS	= -Wall -ansi -pedantic -m32
LIBDIR  = -L$(ROOTDIR)/lib
INC = /usr/include $(ROOTDIR)/include
INCDIR  = $(foreach d, $(INC), -I$d)
LIBS    = -lhardware

###------------------------------
### Main targets 
###------------------------------------------------------------
BINARIES= test
OBJECTS	= $(addsuffix .o,\
	   )

all: $(BINARIES) $(OBJECTS)

###------------------------------
### Binaries
###------------------------------------------------------------
test: mi_kernel.o mi_user.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)


###------------------------------
### #include dependences 
###------------------------------------------------------------
# you may fill these lines with "make depend"
mi_kernel.o: mi_kernel.c include/mi_syscall.h include/mi_kernel.h include/hardware.h
mi_user.o: mi_user.c 
%.o: %.c
	$(CC) $(CFLAGS) -c $< $(INCDIR)

###------------------------------
### Misc.
###------------------------------------------------------------
.PHONY: clean realclean depend
clean:
	$(RM) *.o $(BINARIES)
realclean: clean 
	$(RM) vdiskA.bin vdiskB.bin
depend : 
	$(CC) -MM $(INCDIR) *.c

