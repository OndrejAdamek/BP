function Partition(A, p, r)
{
    let x = A[r]
    let i = p - 1

    for (let j = p; j < r; j++)
    {
        if (A[j] < x)
        {
            i = i + 1;
            [A[i], A[j]] = [A[j], A[i]];
        }
    }

    [A[i + 1], A[r]] = [A[r], A[i + 1]];
    return i + 1;
}

function QuickSort(A, p, r)
{
    if (p < r)
    {
        let q = Partition(A, p, r);
        QuickSort(A, p, q - 1);
        QuickSort(A, q + 1, r);
    }
}