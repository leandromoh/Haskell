dropLast n xs 
 | n < 1 = xs 
 | otherwise = let s = splitAt n xs in bla (fst s) (snd s)
 where 
  bla _ [] = []
  bla (x:xs) (y:ys) = x : bla (xs ++ [y]) ys

main = print $ take 3 $ dropLast 100 [1..]
