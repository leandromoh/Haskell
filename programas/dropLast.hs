--ghc 8.0.1 /opt/ghc/8.0.1/lib/ghc-8.0.0.20160127/

dropLast xs 0 = xs
dropLast xs n
 | z == [] = []
 | otherwise = dae (z !! 0) (z !! 1) []
 where z = bla xs [] n

bla [] _ _ = []
bla (x:xs) ys n
 | n > 0 = bla xs (ys ++ [x]) (n-1)
 | otherwise = [(x:xs), ys]

dae [] _ zs = zs
dae (x:xs) (y:ys) zs = dae xs (ys ++ [x]) (zs ++ [y])

main = print $ dropLast [1..5] 2
