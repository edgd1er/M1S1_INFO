CC=gcc
#CFLAGS=-ggdb -W -Wall -ansi  -m32 -pedantic -I.
CFLAGS=-ggdb -W -Wall -m32 -pedantic -I. -m32
LDFLAGS=
LIBDIR=
LIBS=
EXEC= pingpong prodcons2

SRC		= $(wildcard *.c)
OBJ		= $(SRC:.c=.o)

OBJECTS	= $(addsuffix .o,\
	   prodcons pingpong libcontext )

all: $(EXEC)

##prodcons: prodcons.o libcontext.o hw.o
pingpong: pingpong.o libcontext.o hw.o
prodcons2: prodcons2.o sem.o yield.o start_schedule.o hw.o

 %: %.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)
 
###------------------------------
### #include dependences 
###------------------------------------------------------------
pingpong.o: pingpong.c libcontext.h hw.h
##prodcons.o: prodcons.c libcontext.h hw.h
prodcons2.o: prodcons2.c sem.h yield.h start_schedule.h hw.h
 
 %.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)
