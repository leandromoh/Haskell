infixr 5 :-:  
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)  


infixr 5  .++  
(.++) :: List a -> List a -> List a   
Empty .++ ys = ys  
(x :-: xs) .++ ys = x :-: (xs .++ ys) 

    
main = let a = 3 :-: 4 :-: 5 :-: Empty  
           b = 6 :-: 7 :-: Empty  
       in print $ a .++ b  
