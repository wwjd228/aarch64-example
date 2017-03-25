int main(void)
{
    long long a = 7, b = 8;
    a = a << 2;
    a |= b;
    a &= 1;
    a = ~a;
    a += 1;
    return a;
}
