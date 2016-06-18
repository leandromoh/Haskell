dropWhile' f [] = []
dropWhile' f (x:xs) = if f x then dropWhile' f xs else xs

takeWhile' f [] = []
takeWhile' f (x:xs) = if f x then x : takeWhile' f xs else []

split c [] = []
split c xs = (takeWhile' (/= c) xs) : split c (dropWhile' (/= c) xs)