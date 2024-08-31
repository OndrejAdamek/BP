function find_minimum(A)
    min = A[1]

    for i in 2:length(A)
        if A[i] < min
            min = A[i]
        end
    end

    return min
end