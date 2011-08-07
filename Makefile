# Makefile for Fibonacci example

# Test-related files
TPROG := testFib
TSRC := testFib.cpp

# Product-related files
SRC := 
INC := Fib.h

# Shouldn't change anything below here

OBJ=$(SRC:.cpp=.o)
TOBJ=$(TSRC:.cpp=.o)


GTEST_BASE_DIR=../gtest
GTEST_INC_DIR=$(GTEST_BASE_DIR)/include
GTEST_LIB_DIR=$(GTEST_BASE_DIR)/lib

IFLAG=-I$(GTEST_INC_DIR)
LFLAG=-L$(GTEST_LIB_DIR)

GTEST_LIB=-lgtest
GTEST_MAIN_LIB=-lgtest_main

CXXFLAGS=$(DFLAG) $(IFLAG)

.PHONY : test all clean

test: all
	./$(TPROG)

all: $(TPROG)

$(TPROG) : $(TOBJ) $(OBJ)
	$(CXX) -o $@ $^ $(LFLAG) $(GTEST_LIB) $(GTEST_MAIN_LIB) -pthread

testFib.o: testFib.cpp $(INC)
