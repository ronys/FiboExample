// Test framework for Fibonacci example
#include "gtest/gtest.h"

#include "Fib.h"

TEST(FiboTest, ftest) {
  struct {int n; int fn;} cases[] = {
    {0, 0}, {1, 1}, {2, 1}, {3, 2},
  };
  for (int i = 0; i < sizeof(cases)/sizeof(cases[0]); i++)
    EXPECT_EQ(cases[i].fn, fib(cases[i].n));
}
