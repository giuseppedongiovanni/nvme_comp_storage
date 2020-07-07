################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/dma/xaxidma.c \
../src/dma/xaxidma_bd.c \
../src/dma/xaxidma_bdring.c \
../src/dma/xaxidma_g.c \
../src/dma/xaxidma_selftest.c \
../src/dma/xaxidma_sinit.c 

OBJS += \
./src/dma/xaxidma.o \
./src/dma/xaxidma_bd.o \
./src/dma/xaxidma_bdring.o \
./src/dma/xaxidma_g.o \
./src/dma/xaxidma_selftest.o \
./src/dma/xaxidma_sinit.o 

C_DEPS += \
./src/dma/xaxidma.d \
./src/dma/xaxidma_bd.d \
./src/dma/xaxidma_bdring.d \
./src/dma/xaxidma_g.d \
./src/dma/xaxidma_selftest.d \
./src/dma/xaxidma_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/dma/%.o: ../src/dma/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../Greedy_test_v3_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


