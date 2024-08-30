fn factorial(n: u32) -u32
{
    if n < 2
    {
        1
    }
    else
    {
        n * factorial(n-1)
    }
}