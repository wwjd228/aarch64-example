#include <stdio.h>

extern long long fib(long long a);

int main(void)
{
    int i = 0;
    printf("fibonacci number 0 ~ 10\n%lld", fib(i++));
    while (i < 11)
        printf(", %lld", fib(i++));

    printf("\n");
    return 0;
}
