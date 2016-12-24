data Shape = Circle Float Float Float | Rectangle Float Float Float Float  deriving (Show) 

surface :: Shape -> Float  
surface (Circle _ _ r) = pi * r ^ 2  
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1) 

circles =  map (Circle 10 20) [4,5,6,6] 

main = print $ circles