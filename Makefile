# Tool definitions
CC ?= gcc
CXX ?= g++

# settings
SRC_DIR = ./src
TEST_DIR = ./tests
BUILD_DIR = .
NAME = my_executable.elf

# search path for header files
CFLAGS += -I$(SRC_DIR)/average

# list of all the modules src files
CSOURCES = $(SRC_DIR)/main.c
CSOURCES += $(wildcard $(SRC_DIR)/average/*.c)

# compiler flags
CFLAGS += -Wall

# linker flags
LDFLAGS +=

# generate names for output object files (*.o)
COBJECTS = $(patsubst %.c, %.o, $(CSOURCES))


# define rules to build the application
.PHONY: all
all: $(NAME)

# build components
$(COBJECTS) : %.o : %.c
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# build the target application
.PHONY: $(NAME)
$(NAME): $(COBJECTS)
	$(CC) $(COBJECTS) -o $(BUILD_DIR)/$(NAME) $(LDFLAGS)

# Remove compiles object files
.PHONY: clean
clean:
	rm -f $(COBJECTS)

.PHONY: test
test:
	make -C $(TEST_DIR)

.PHONY: test_clean
test_clean:
	make -C $(TEST_DIR) clean
