static void Swap(int[] A, int i, int j)
{
    int temp = A[i];
    A[i] = A[j];
    A[j] = temp;
}

static int Partition(int[] A, int p, int r)
{
    int x = A[r];
    int i = p - 1;

    for (int j = p; j < r; j++)
    {
        if (A[j] < x)
        {
            i++;
            Swap(A, i, j);
        }
    }

    Swap(A, i + 1, r);
    return i + 1;
}

static void QuickSort(int[] A, int p, int r)
{
    if(p < r)
    {
        int q = Partition(A, p, r);
        QuickSort(A, p, q - 1);
        QuickSort(A, q + 1, r);
    }
}

int[] A = { 3, 8, 2, 5, 1, 4, 7, 6 };
QuickSort(A, 0, A.Length - 1);
Console.WriteLine("Seřazené pole: " + string.Join(", ", A));
Console.ReadLine();