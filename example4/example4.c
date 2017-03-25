int main(void)
{
    long long a[10] = {0, 1, 2, 3, 4, 5, 6 ,7 ,8 ,9};
    long long h = 1;
    a[9] = h + a[7];
    return a[9];
}
