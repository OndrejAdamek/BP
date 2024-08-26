PARTITION(A, p, r)
x = A[r]	 					        // the pivot
i = p - 1 					            // highest index into the low side
for j = p to r - 1 				        // process each element other than the pivot
    if A[j] < x 				        // does this element belong on the low side?
        i = i + 1 				        // index of a new slot in the low side
        exchange A[i]  with A[j]  	    // put this element there
exchange A[i] with A[r]			        // pivot goes just to the right of the low side
return i + 1 					        // new index of the pivot

QUICKSORT(A, p, r)
if p < r
// Partition the subarray around the pivot, which ends up in A[q].
    q = PARTITION(A, p, r)
    QUICKSORT(A, p, q – 1)	            // recursively sort the low side
    QUICKSORT(A, q + 1, r)	            // recursively sort the high side


Cormen, T. H.; Leiserson, Ch. E.; Rivest, R. L.; Clifford, S. Introduction to Algorithms, 4th ed.; The MIT Press: Cambridge, Massachusetts London, England, 2022. 


Find_minimum(A)
min = A[0]
for i = 1 to (length_of_A – 1)
    if A[i] < min
        min = A[i]
return min


Factorial(n)
if n<2
    return 1
else
    return n * Factorial(n – 1)
