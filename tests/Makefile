# define test components dirs
TEST_DIR = $(dir $(wildcard */))

# default rule: run all the tests
.PHONY: all $(TEST_DIR)
all: $(TEST_DIR)

# Run the tests
$(TEST_DIR):
	make -C $@

# clean tests
.PHONY: clean
clean:
	$(foreach DIR, $(TEST_DIR), make -C $(DIR) clean)
