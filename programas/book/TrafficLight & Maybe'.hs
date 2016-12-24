data TrafficLight = Red | Yellow | Green  

instance Eq TrafficLight where  
    Red == Red = True  
    Green == Green = True  
    Yellow == Yellow = True  
    _ == _ = False  


instance Show TrafficLight where  
    show Red = "Red light"  
    show Yellow = "Yellow light"  
    show Green = "Green light"

-------------------------------------

-- type constructor = value constructors
data Maybe' a = Nothing' | Just' a

instance (Eq m) => Eq (Maybe' m) where  
    Just' x == Just' y = x == y  
    Nothing' == Nothing' = True  
    _ == _ = False  

main = print $ Just' Red == Just' Red