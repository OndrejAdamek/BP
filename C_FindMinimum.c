#include <stdio.h>

int Find_minimum(int A[], int A_length)
{
    int min = A[0];

    for (int i = 1; i < A_length; i++)
    {
        if (A[i] < min)
        {
            min = A[i];
        }
    }
    return min;
}