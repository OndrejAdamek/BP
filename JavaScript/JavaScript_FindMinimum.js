function FindMinimum(A)
{
    let min = A[0]

    for (let i = 1; i < A.length; i++)
    {
        if(A[i] < min)
        {
            min = A[i];
        }
    }

    return min;
}