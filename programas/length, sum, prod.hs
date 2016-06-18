length1 [] = 0
length1 (x:xs) = 1 + length1 xs

sum1 [] = 0
sum1 (x:xs) = x + sum1 xs

prod1 [] = 1
prod1 (x:xs) = x * prod1 xs

sum2 = foldr (+) 0

prod2 = foldr (*) 1