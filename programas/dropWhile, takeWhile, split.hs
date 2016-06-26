dropWhile' f [] = []
dropWhile' f (x:xs) = if f x then dropWhile' f xs else x:xs

takeWhile' f [] = []
takeWhile' f (x:xs) = if f x then x : takeWhile' f xs else []

split p [] = []
split p xs = (takeWhile' px xs) : split p (drop 1 (dropWhile' px xs))
  where px = not . p

main = print $ split (==3) [1,2,3,4,5]
