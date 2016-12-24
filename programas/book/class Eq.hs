class Eq a where  
    (==) :: a -> a -> Bool  
    (/=) :: a -> a -> Bool  
-- lines bellow provide default implementation (not mandatory)
    x == y = not (x /= y)  
    x /= y = not (x == y)  