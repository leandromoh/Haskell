map' f [] = []
map' f (x:xs) = f x : map' f xs

filter' f [] = []
filter' f (x:xs)
  | f x = x : ls
  | otherwise = ls
  where 
    ls = filter' f xs
    
-- foldr (+) 0 [1,2,3]) = + 1 (+ 2 (+ 3 0))
foldr' f init [] = init
foldr' f init (x:xs) = f x (foldr' f init xs)

-- foldl (^) 2 [3,4] = (^ (^ 2 3) 4)
foldl' f init [] = init                  
foldl' f init (x:xs) = foldl' f (f init x) xs