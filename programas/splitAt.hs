splitOt n xs
 | n < 1 = ([],xs)
 | otherwise = splitOt' n xs
  where 
    splitOt' _ [] = ([],[])
    splitOt' 0 xs = ([],xs)
    splitOt' n (x:xs) = (x:restOfList, right)
      where
        (restOfList, right) = splitOt' (n-1) xs
