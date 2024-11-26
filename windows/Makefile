# Dhrystone Benchmark Makefile
CC = cl.exe
CFLAGS = /w /DSUPERTIMER /favor:INTEL64 /GL

# Source files
SRCS = ..\dhry_p1.c ..\dhry_p2.c
HDR = ..\dhry_glb.h

# Executable names with optimization levels
EXECS = O0-dhrystone.exe O1-dhrystone.exe O2-dhrystone.exe O3-dhrystone.exe OX-dhrystone.exe

# Default target
all: $(EXECS)

# Compilation rule for different optimization levels
O0-dhrystone.exe: $(SRCS) $(HDR)
	$(CC) $(CFLAGS) /O0 $(SRCS) /o $@

O1-dhrystone.exe: $(SRCS) $(HDR)
	$(CC) $(CFLAGS) /O1 $(SRCS) /o $@

O2-dhrystone.exe: $(SRCS) $(HDR)
	$(CC) $(CFLAGS) /O2 $(SRCS) /o $@

O3-dhrystone.exe: $(SRCS) $(HDR)
	$(CC) $(CFLAGS) /O3 $(SRCS) /o $@

OX-dhrystone.exe: $(SRCS) $(HDR)
	$(CC) $(CFLAGS) /Ox $(SRCS) /o $@

# Run targets for each optimization level
run-O0: O0-dhrystone
	.\O0-dhrystone

run-O1: O1-dhrystone
	.\O1-dhrystone

run-O2: O2-dhrystone
	.\O2-dhrystone

run-O3: O3-dhrystone
	.\O3-dhrystone

# Run all optimization levels
run-all: $(EXECS)
	.\O0-dhrystone
	.\O1-dhrystone
	.\O2-dhrystone
	.\O3-dhrystone
	.\OX-dhrystone

# Clean target
clean:
	del O0-dhrystone.exe O1-dhrystone.exe O2-dhrystone.exe O3-dhrystone.exe OX-dhrystone.exe *.obj

# Phony targets
.PHONY: all clean run-O0 run-O1 run-O2 run-O3 run-all
