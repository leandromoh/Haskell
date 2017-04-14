--https://projecteuler.net/archives

x `divisibleBy` numbers = any (\y -> x `mod` y == 0) numbers

main = print $ sum $ filter (`divisibleBy` [3, 5]) [1..1000]
