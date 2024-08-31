package main

import "core:fmt"

find_minimum :: proc(A: []int) -> int
{
    min := A[0]

    for i := 1; i < len(A); i += 1
    {
        if A[i] < min
        {
            min = A[i]
        }
    }

    return min
}