swap :: [a] -> Int -> Int -> [a]
swap arr i j =
    let elemI = arr !! i
        elemJ = arr !! j
    in take i arr ++ [elemJ] ++ drop (i + 1) (take j arr ++ [elemI] ++ drop (j + 1) arr)

partition :: Ord a => [a] -> Int -> Int -> ([a], Int)
partition arr p r =
    let x = arr !! r
        (arr', i) = foldl (\(arr, i) j ->
            if arr !! j < x
            then let arr'' = swap arr (i+1) j
                in (arr'', i + 1)
            else (arr, i))
            (arr, p - 1) [p..r-1]
        arr'' = swap arr' (i+1) r
    in (arr'' , i + 1)    

quicksort :: Ord a => [a] -> Int -> Int -> [a]
quicksort arr p r
    | p < r     = let (arr', q) = partition arr p r
                  in quicksort (quicksort arr' p (q - 1)) (q + 1) r
    | otherwise = arr