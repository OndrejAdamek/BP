package main

func Partition(A []int, p, r int) int {
	x := A[r]
	i := p - 1

	for j := p; j < r; j++ {
		if A[j] < x {
			i++
			A[i], A[j] = A[j], A[i]
		}
	}

	A[i+1], A[r] = A[r], A[i+1]
	return i + 1
}

func QuickSort(A []int, p, r int) {
	if p < r {
		q := Partition(A, p, r)
		QuickSort(A, p, q-1)
		QuickSort(A, q+1, r)
	}
}
