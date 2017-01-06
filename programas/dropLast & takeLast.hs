dropLast :: Int -> [a] -> [a]
dropLast n xs = aux xs $ drop n xs 
 where
  aux _ [] = []
  aux (x:xs) (_:ys) = x : aux xs ys


takeLast :: Int -> [a] -> [a]
takeLast n xs = aux xs $ drop n xs 
 where
  aux xs [] = xs
  aux (_:xs) (_:ys) = aux xs ys


main = print $ let list = [1..100]
               in (==) list $ (dropLast 60 list) ++ (takeLast 60 list)
