void clear1(long long array[], int size)
{
    int i = 0;
    while ( i < size )
        array[i++] = 0;
}

void clear2(long long *array, int size)
{
    long long *p = array;
    while ( p < array + size )
        *p++ = 0;
}

void main(void)
{
    long long a1[5] = {1, 2, 3, 4, 5};
    long long a2[5] = {1, 2, 3, 4, 5};
    clear1(a1, 5);
    clear2(a2, 5);
}
