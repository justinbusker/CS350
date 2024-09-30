#include <stdio.h>

extern long long int f(long long int n, long long int k);

int main() {
    long long int result = f(2, 4); // Example arguments
    printf("Result: %lld\n", result);
    return 0;
}

