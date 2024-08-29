public class Java_FindMinimum 
{
    public static int FindMinimum(int [] A)
    {
        int min = A[0];

        for (int i = 1; i < A.length; i++)
        {
            if (A[i] < min)
            {
                min = A[i];
            }
        }

        return min;
    }   
}