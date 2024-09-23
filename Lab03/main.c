/* main.c simple program to test assembler program */

#include <stdio.h>

extern long long int test(long long int a, long long int b);
extern long long int questionthree();
extern long long int questionfour();

int main(void)
{
    long long int a = test(3, 5);
    printf("Result of test(3, 5) = %ld\n", a);
    long long int b = questionthree();
    printf("Result of question3(), %ld\n", b);
    long long int c = questionfour();
    printf("Result of question3(), %ld\n", c);
    return 0;
}
