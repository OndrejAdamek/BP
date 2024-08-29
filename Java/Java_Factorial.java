public class Java_Factorial 
{
    public static int Factorial(int n)
    {
        if(n < 2)
        {
            return 1;
        }
        else
        {
            return n * Factorial(n - 1);
        }
    }
}
