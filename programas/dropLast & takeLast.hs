dropLast :: Int -> [a] -> [a]
dropLast n xs = zipWith (\a _ -> a) xs $ drop n xs


takeLast :: Int -> [a] -> [a]
takeLast n xs = aux xs $ drop n xs 
 where
  aux xs [] = xs
  aux (_:xs) (_:ys) = aux xs ys


main = print $ let list = [1..100]
               in (==) list $ (dropLast 60 list) ++ (takeLast 60 list)
