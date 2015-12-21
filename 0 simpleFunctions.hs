length' [] = 0
length' (x:xs) = 1 + length' xs

square' x = x * x

sum' [] = 0
sum' (x:xs) = x + sum' xs

prod' [] = 1
prod' (x:xs) = x * (prod' xs)

fold' f init [] = init
fold' f init (x:xs) = f x (fold' f init xs)

sum'' = fold' (+) 0

prod'' = fold' (*) 1

filter' f [] = []
filter' f (x:xs) = if f x then x : ls else ls
                   where ls = filter' f xs

map' f [] = []
map' f (x:xs) = f x : map' f xs

quadraticFunction a b c = \x -> a * (x * x) + b * x + c

checkprime [] n = True 
checkprime (x:xs) n = if mod n x == 0 then False else checkprime xs n

isPrime n = checkprime [2..(n - 1)] n

takePrimesUntil n = [x | x <- [1..n], isPrime x]

takePrimes n = searchPrimes 1 0 n	

searchPrimes current found limit
    | found == limit = []
    | isPrime current = current : searchPrimes (current+1) (found+1) limit
    | otherwise = searchPrimes (current+1) found limit

quicksort [] = []
quicksort (x:xs) = quicksort lowers ++ [x] ++ quicksort largers
                   where lowers = filter' (< x) xs
                         largers = filter' (>=x) xs

muxList f (x:[]) = x
muxList f (x:xs) = if f x m then x else m 
                   where m = muxList f xs

minList xs = muxList (<) xs

maxList xs = muxList (>) xs

remove' e [] = []
remove' e (x:xs) = if e == x then xs else x : remove' e xs

selectionSort [] = []
selectionSort xs = min : selectionSort (remove' min xs)
                   where min = minList xs                
