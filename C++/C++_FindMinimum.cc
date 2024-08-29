int Find_minimum(int A[], int length_of_A )
{
    int min = A[0];

    for (int i = 1; i < length_of_A; ++i)
    {
        if (A[i] < min)
        {
            min = A[i];
        }
    }

    return min;
}