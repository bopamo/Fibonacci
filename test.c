#include <CppUTest/CommandLineTestRunner.h>
#include <CppUTest/TestHarness.h>

TEST_GROUP(FirstTestGroup)
{
};

TEST(FirstTestGroup, FirstTest)
{
   FAIL("Fail me!");
}

/* Tests begin Here */
int main(int ac, char** av)
{
    return CommandLineTestRunner::RunAllTests(ac, av);
}
