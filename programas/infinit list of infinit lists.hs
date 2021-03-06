checkprime [] n = True 
checkprime (x:xs) n 
  | mod n x == 0 = False
  | otherwise = checkprime xs n

isPrime 1 = False
isPrime 2 = True
isPrime n = checkprime [2..(n - 1)] n

primes = [ p | p <- [1..] , isPrime p]

powList x = map (x^) [1..]

infinits = map powList primes

main = print $  map (take 3) (take 9 infinits)
