# name of the components under test
COMPONENT_NAME = average

# Dynamically generate absolute paths
MAKEFILE_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
PROJECT_DIR = $(realpath $(MAKEFILE_DIR)../..)
SRC_DIR = $(PROJECT_DIR)/src
TEST_DIR = $(PROJECT_DIR)/tests

# location of CppUTest (if not already set)
CPPUTEST_HOME ?= $(PROJECT_DIR)/tools/cpputest

# include the source file for components under test
INCLUDE_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)
SRC_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)

# include CppUTest header files
INCLUDE_DIRS += $(CPPUTEST_HOME)/include

# directories containing the Unit tests
TEST_SRC_DIRS = $(TEST_DIR)/$(COMPONENT_NAME)

# run MakeFileWorkier.mk with the variables set in this Makefile
include $(CPPUTEST_HOME)/build/MakefileWorker.mk
