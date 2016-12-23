--ghc 8.0.1 /opt/ghc/8.0.1/lib/ghc-8.0.0.20160127/

vv f [x] = x
vv f (x:xs)
 | f x = x
 | otherwise = vv f xs

foldlUntil f g n xs =  vv f . scanl g n $ xs

quantityIterator limit p xs = p $ foldlUntil (== limit) (\ac _ -> ac + 1) 0 xs

atLeast xs min = quantityIterator min (>= min) xs

atMost xs max = quantityIterator (max + 1) (<= max) xs

exactly xs size = quantityIterator (size + 1) (== size) xs

countBetween xs min max = quantityIterator (max + 1) (\count -> min <= count && count <= max) xs


atLeastTest = let min = 3 in
              atLeast [1..2] min == False && 
              atLeast [1..3] min == True &&
              atLeast [1..4] min == True

atMostTest = let max = 3 in
             atMost [1..2] max == True && 
             atMost [1..3] max == True &&
             atMost [1..4] max == False

exactlyTest = let size = 3 in
             exactly [1..2] size == False && 
             exactly [1..3] size == True &&
             exactly [1..4] size == False

countBetweenTest = let min = 2 
                       max = 4 in
                   countBetween [1..1] min max == False && 
                   countBetween [1..2] min max == True && 
                   countBetween [1..3] min max == True && 
                   countBetween [1..4] min max == True && 
                   countBetween [1..5] min max == False

main = print $ atLeastTest && atMostTest && exactlyTest && countBetweenTest 
