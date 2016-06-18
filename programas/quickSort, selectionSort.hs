quicksort [] = []
quicksort (x:xs) = quicksort lowers ++ [x] ++ quicksort largers
                   where lowers = filter (< x) xs
                         largers = filter (>= x) xs
                         
removeFirst e [] = []
removeFirst e (x:xs)
  | e == x = xs
  | otherwise = x : removeFirst e xs

selectionSort [] = []
selectionSort xs = min : selectionSort (removeFirst min xs)
                   where min = minList xs