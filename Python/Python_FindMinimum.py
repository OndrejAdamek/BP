def Find_minimum(A):
    min = A[0]

    for i in range(1, len(A)):
        if A[i] < min:
            min = A[i]

    return min