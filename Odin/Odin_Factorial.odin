package main 

import "core:fmt"

factorial :: proc(n: int) -> int
{
    if n < 2
    {
        return 1
    }
    else
    {
        return n * factorial(n - 1)
    }
}