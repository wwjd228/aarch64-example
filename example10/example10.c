#include <stdio.h>

void strcpy(char x[], char y[])
{
    while ((*x++ = *y++) != '\0');
}

long long fact(long long n)
{
    if ( n <= 1 ) return 1;
    return n * fact(n-1);
}

int main(void)
{
    char src[5] = "hello";
    char dist[5] = "";
    strcpy(dist, src);
    printf("%s\n", dist);
    return fact(5);
}
