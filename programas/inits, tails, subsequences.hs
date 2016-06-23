inits [] = [[]]
inits (x:xs) = [] : map (x:) (inits xs)

tails [] = [[]]
tails (x:xs) = (x:xs) : tails xs

tails1 = foldr ( \ x y -> (x : (head y)) : y) [[]]

subsequences xs         =  [] : nonEmptySubsequences xs

nonEmptySubsequences []      =  []
nonEmptySubsequences (x:xs)  =  [x] : foldr f [] (nonEmptySubsequences xs)
  where f ys r = ys : (x : ys) : r

continuousSubSeqs xs = filter (not . null) (withEmptySubsequences xs)
 
withEmptySubsequences [] = []
withEmptySubsequences (x:xs) =  (inits (x:xs) ++ withEmptySubsequences (xs))
