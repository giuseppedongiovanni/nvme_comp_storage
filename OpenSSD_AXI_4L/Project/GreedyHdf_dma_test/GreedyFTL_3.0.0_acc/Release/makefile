################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/nvme/subdir.mk
-include src/dma/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
GreedyFTL_3.0.0_acc.elf.size \


# All Target
all: GreedyFTL_3.0.0_acc.elf secondary-outputs

# Tool invocations
GreedyFTL_3.0.0_acc.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	arm-xilinx-eabi-gcc -Wl,-T -Wl,../src/lscript.ld -L../../GreedyFTL_3.0.0_acc_bsp/ps7_cortexa9_0/lib -o "GreedyFTL_3.0.0_acc.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

GreedyFTL_3.0.0_acc.elf.size: GreedyFTL_3.0.0_acc.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size GreedyFTL_3.0.0_acc.elf  |tee "GreedyFTL_3.0.0_acc.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) GreedyFTL_3.0.0_acc.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
