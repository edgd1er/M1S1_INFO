################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../dfs.o \
../dmps.o \
../drive.o \
../dvol.o \
../frmt.o \
../if_cfile.o \
../if_dfile.o \
../if_nfile.o \
../if_pfile.o \
../ifile.o \
../inode.o \
../mbr.o \
../mkhd.o \
../mknfs.o \
../mkvol.o \
../mount.o \
../super.o \
../test_alloc.o \
../tools.o \
../vm.o 

C_SRCS += \
../dfs.c \
../dmps.c \
../drive.c \
../dvol.c \
../frmt.c \
../if_cfile.c \
../if_dfile.c \
../if_nfile.c \
../if_pfile.c \
../ifile.c \
../inode.c \
../mbr.c \
../mkhd.c \
../mknfs.c \
../mkvol.c \
../mount.c \
../super.c \
../test_alloc.c \
../tools.c \
../vm.c 

OBJS += \
./dfs.o \
./dmps.o \
./drive.o \
./dvol.o \
./frmt.o \
./if_cfile.o \
./if_dfile.o \
./if_nfile.o \
./if_pfile.o \
./ifile.o \
./inode.o \
./mbr.o \
./mkhd.o \
./mknfs.o \
./mkvol.o \
./mount.o \
./super.o \
./test_alloc.o \
./tools.o \
./vm.o 

C_DEPS += \
./dfs.d \
./dmps.d \
./drive.d \
./dvol.d \
./frmt.d \
./if_cfile.d \
./if_dfile.d \
./if_nfile.d \
./if_pfile.d \
./ifile.d \
./inode.d \
./mbr.d \
./mkhd.d \
./mknfs.d \
./mkvol.d \
./mount.d \
./super.d \
./test_alloc.d \
./tools.d \
./vm.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


