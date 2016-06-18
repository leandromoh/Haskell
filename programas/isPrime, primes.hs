checkprime [] n = True 
checkprime (x:xs) n 
  | mod n x == 0 = False
  | otherwise = checkprime xs n

isPrime n = checkprime [2..(n - 1)] n

primes = [ p | p <- [1..] , isPrime p]