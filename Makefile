# Makefile for static linking of the C program

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g #-O2

# Output executable name
TARGET = hello-world

# Source files
SRCS = hello-world.c

# Object files
OBJS = $(SRCS:.c=.o)

# Static libraries (if any)
# You can specify static libraries here if needed, e.g., -static-libgcc
LIBS = -static

# Default target
all: $(TARGET)

# Link the object files to create the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(LIBS)

# Compile source files to object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(OBJS) $(TARGET)

# Phony targets
.PHONY: all clean
