isPrime n = n > 1 && all (\x -> n `mod` x /= 0) [2..(n - 1)]

primes = [ p | p <- [1..] , isPrime p]
