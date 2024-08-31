findminimum :: Ord a => [a] -> a
findminimum (x:xs) = foldl (\minElem elem -> if elem < minElem then elem else minElem) x xs