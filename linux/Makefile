# Dhrystone Benchmark Makefile
CC = gcc
CFLAGS = -w -DCLOCK_GETTIME_CPU -march=native -mtune=native

# Source files
SRCS = ../dhry_p1.c ../dhry_p2.c
HDR = ../dhry_glb.h

# Executable names with optimization levels
EXECS = O0-dhrystone O1-dhrystone O2-dhrystone O3-dhrystone

# Default target
all: $(EXECS)

# Compilation rule for different optimization levels
O0-dhrystone: $(SRCS) $(HDR)
	$(CC) $(CFLAGS) -O0 $(SRCS) -o $@

O1-dhrystone: $(SRCS) $(HDR)
	$(CC) $(CFLAGS) -O1 $(SRCS) -o $@

O2-dhrystone: $(SRCS) $(HDR)
	$(CC) $(CFLAGS) -O2 $(SRCS) -o $@

O3-dhrystone: $(SRCS) $(HDR)
	$(CC) $(CFLAGS) -O3 $(SRCS) -o $@

# Run targets for each optimization level
run-O0: O0-dhrystone
	./O0-dhrystone

run-O1: O1-dhrystone
	./O1-dhrystone

run-O2: O2-dhrystone
	./O2-dhrystone

run-O3: O3-dhrystone
	./O3-dhrystone

# Run all optimization levels
run-all: $(EXECS)
	@for exec in $(EXECS); do \
		echo "Running $$exec:"; \
		./$$exec; \
		echo "-------------------"; \
	done

# Clean target
clean:
	rm -f O0-dhrystone O1-dhrystone O2-dhrystone O3-dhrystone

# Phony targets
.PHONY: all clean run-O0 run-O1 run-O2 run-O3 run-all
