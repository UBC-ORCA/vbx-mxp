CPU_FLAGS:= -MMD -MP     -mcpu=cortex-a9 -mfpu=neon -mfloat-abi=hard  -lxilffs
CPU_FLAGS+=-Wl,-build-id=none -specs=$(dir $(lastword $(MAKEFILE_LIST)))/app/Xilinx.spec
CROSS_COMPILER=arm-none-eabi-
PROCESSOR_INSTANCE := ps7_cortexa9_0
PROCESSOR_TYPE := cortexa9
PROCESSOR_TARGET := *A9*0
