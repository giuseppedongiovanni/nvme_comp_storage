################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/llfifo/xllfifo.c \
../src/llfifo/xllfifo_g.c \
../src/llfifo/xllfifo_sinit.c \
../src/llfifo/xstreamer.c 

OBJS += \
./src/llfifo/xllfifo.o \
./src/llfifo/xllfifo_g.o \
./src/llfifo/xllfifo_sinit.o \
./src/llfifo/xstreamer.o 

C_DEPS += \
./src/llfifo/xllfifo.d \
./src/llfifo/xllfifo_g.d \
./src/llfifo/xllfifo_sinit.d \
./src/llfifo/xstreamer.d 


# Each subdirectory must supply rules for building sources it contributes
src/llfifo/%.o: ../src/llfifo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../GreedyFTL_3.0.0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


