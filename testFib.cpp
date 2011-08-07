// Test framework for Fibonacci example
#include "gtest/gtest.h"

#include "Fib.h"

TEST(FiboTest, ftest) {
  EXPECT_EQ(0, fib(0));
}
