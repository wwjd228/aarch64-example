long long leaf_example(long long g, long long h , long long i, long long j)
{
    long long f = 0;
    f = (g + h) - (i + j);
    return f;
}

int main(void)
{
    return leaf_example(3, 4, 1, 2);
}
