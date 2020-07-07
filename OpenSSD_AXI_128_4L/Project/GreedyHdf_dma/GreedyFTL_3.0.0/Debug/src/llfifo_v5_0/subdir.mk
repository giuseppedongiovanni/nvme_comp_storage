################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/llfifo_v5_0/xllfifo.c \
../src/llfifo_v5_0/xllfifo_g.c \
../src/llfifo_v5_0/xllfifo_sinit.c \
../src/llfifo_v5_0/xstreamer.c 

OBJS += \
./src/llfifo_v5_0/xllfifo.o \
./src/llfifo_v5_0/xllfifo_g.o \
./src/llfifo_v5_0/xllfifo_sinit.o \
./src/llfifo_v5_0/xstreamer.o 

C_DEPS += \
./src/llfifo_v5_0/xllfifo.d \
./src/llfifo_v5_0/xllfifo_g.d \
./src/llfifo_v5_0/xllfifo_sinit.d \
./src/llfifo_v5_0/xstreamer.d 


# Each subdirectory must supply rules for building sources it contributes
src/llfifo_v5_0/%.o: ../src/llfifo_v5_0/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../GreedyFTL_3.0.0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


