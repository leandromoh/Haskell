map' f = foldr (\x acc -> f x : acc) []

filter' p =  foldr (\x acc -> if p x then x : acc else acc) []

foldl' f a bs = foldr (\b g x -> g (f x b)) id bs a

main = print $ foldl' (+) 0 [1..3]




--- foldr (+) 0 [1,2,3] = + 1 (+ 2 (+ 3 0))
foldr' f init [] = init
foldr' f init (x:xs) = f x (foldr' f init xs)
    
--- foldl (^) 2 [3,4] = (^ (^ 2 3) 4) 
foldl' f init [] = init                   
foldl' f init (x:xs) = foldl' f (f init x) xs
