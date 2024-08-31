package main

func FindMinimum(A []int) int {
	min := A[0]

	for i := 1; i < len(A); i++ {
		if A[i] < min {
			min = A[i]
		}
	}

	return min
}
