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
BINARIES= mmu_manager oracle
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

mmu_manager: mmu_manager.o user_process.o matrix.o
oracle: oracle.o matrix.o
%.o: %.c
	$(CC) $(CFLAGS) -c $< $(INCDIR)

%: %.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)

###------------------------------
### Misc.
###------------------------------------------------------------
.PHONY: clean realclean depend
clean:
	$(RM) *.o $(BINARIES)
realclean: clean 
	$(RM) vdiskA.bin vdiskB.bin
Makefile.depends:
	$(CC) -MM *.c $(INCDIR) > Makefile.depends

