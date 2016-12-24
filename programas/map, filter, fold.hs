map' f = foldr (\x acc -> f x : acc) []

filter' p =  foldr (\x acc -> if p x then x : acc else acc) []

foldl' f a bs = foldr (\b g x -> g (f x b)) id bs a

main = print $ foldl' (+) 0 [1..3]
