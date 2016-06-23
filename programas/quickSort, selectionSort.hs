quicksort [] = []
quicksort (x:xs) = quicksort lowers ++ [x] ++ quicksort largers
                   where lowers = filter (< x) xs
                         largers = filter (>= x) xs
                         
selectionSort [] = []
selectionSort xs = let x = minimum xs in x : selectionSort (remove x xs)
  where remove _ [] = []
        remove a (x:xs)
          | x == a = xs
          | otherwise = x : remove a xs
