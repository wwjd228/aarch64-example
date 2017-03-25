#include <stdio.h>

extern long long fact(long long x);

int main(void)
{
    printf("%lld\n", fact(6));
    return 0;
}
