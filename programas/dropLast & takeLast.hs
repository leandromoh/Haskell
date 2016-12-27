dropLast :: Int -> [a] -> [a]
dropLast n xs 
 | n < 1 = xs 
 | otherwise = let s = splitAt n xs in bla (fst s) (snd s)
 where 
  bla _ [] = []
  bla (x:xs) (y:ys) = x : bla (xs ++ [y]) ys


takeLast :: Int -> [a] -> [a]
takeLast n xs 
 | n < 1 = []
 | otherwise = let s = splitAt n xs in bla (fst s) (snd s)
 where 
  bla xs [] = xs
  bla (x:xs) (y:ys) = bla (xs ++ [y]) ys


main = print $ let list = [1..100]
               in (==) list $ (dropLast 60 list) ++ (takeLast 60 list)
