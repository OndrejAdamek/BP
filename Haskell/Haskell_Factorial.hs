factorial :: (Integral a) => a -> a
factorial n
 | n < 2    = 1
 | otherwise = n * factorial (n - 1)