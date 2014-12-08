#ROOTDIR=/home/enseign/ASE
#ROOTDIR=/home/m1/dubiez/Documents/ASE_DD03
ROOTDIR=/home/user/Documents/FORMATION/S1_ASE/ASE_DD04
#ROOTDIR=/media/3072-CBDC/_MS1/ASE/ASE_DD01
ROOTDIR=.

CC	= gcc
CFLAGS	= -Wall -ansi -pedantic -m32
CFLAGS  += -g -std=iso9899:1999
LIBDIR  = -L$(ROOTDIR)/lib
INCDIR  = $(ROOTDIR)
INCFLAG  = -I$(INCDIR)

LIBS    = -lhardware
CFLAGS  += $(LIBDIR) $(LIBS)


SRC		= $(wildcard *.c)
OBJ		= $(SRC:.c=.o)
BINARIES= dmps frmt mkhd vm dvol mkvol mknfs dfs test_alloc if_pfile if_nfile if_cfile if_dfile 
OBJECTS	= $(addsuffix .o,\
	   tools drive mbr mount ifile super mbr inode)


all: $(BINARIES)

if_cfile : if_cfile.o $(OBJECTS)
if_nfile : if_nfile.o $(OBJECTS)
if_dfile : if_dfile.o $(OBJECTS)
if_pfile : if_pfile.o $(OBJECTS)
#ifile: ifile.o inode.o super.o mbr.o drive.o
mount: mount.o super.o mbr.o drive.o
inode: inode.o super.o mbr.o drive.o
test_alloc: test_alloc.o super.o mbr.o drive.o
dfs: dfs.o super.o mbr.o drive.o
mknfs: mknfs.o super.o mbr.o drive.o
mkvol: mkvol.o mbr.o drive.o
dvol: dvol.o mbr.o drive.o
vm: vm.o mbr.o drive.o
mbr: mbr.o drive.o 
dmps: dmps.o drive.o
frmt: frmt.o drive.o
mkhd: mkhd.o

%: %.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS) 

###------------------------------
### #include dependences 
###------------------------------------------------------------
# you may fill these lines with "make depend"
if_cfile.o: if_cfile.c ifile.h inode.h tools.h mount.h
if_dfile.o: if_dfile.c ifile.h inode.h tools.h mount.h
if_nfile.o: if_nfile.c ifile.h inode.h tools.h mount.h
if_pfile.o: if_pfile.c ifile.h inode.h tools.h mount.h
ifile.o: ifile.c inode.h tools.h ifile.h 
mount.o: mount.c inode.h tools.h super.h mbr.h drive.h
tools.o: tools.c tools.h super.h drive.h
inode.o: super.h tools.h mbr.h drive.h
test_alloc.o: super.h drive.h mbr.h
dfs.o: super.h drive.h mbr.h
mknfs.o: super.h drive.h mbr.h
super.o: super.h mbr.h drive.h hardware.h
dvol.o: mbr.h drive.h
drive.o: drive.h hardware.h
dmps.o: drive.h hardware.h
frmt.o: drive.h hardware.h
vm.o:   drive.h hardware.h
mbr.o: mbr.h drive.h hardware.h

 %.o: %.c 
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: clean realclean
clean:
	$(RM) *.o $(BINARIES)
realclean: clean 
	$(RM) vdiskA.bin vdiskB.bin *.*~ .fuse*

depend : 
	$(CC) $(CFLAGS) -MM $(INCDIR) *.c 

	
