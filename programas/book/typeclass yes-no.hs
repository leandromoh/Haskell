class YesNo a where  
    yesno :: a -> Bool  
    
instance YesNo Int where  
    yesno 0 = False  
    yesno _ = True 
    
instance YesNo [a] where  
    yesno [] = False  
    yesno _ = True  
    
instance YesNo Bool where  
    yesno = id  
    
instance YesNo (Maybe a) where  
    yesno (Just _) = True  
    yesno Nothing = False  

yesnoIf :: (YesNo y) => y -> a -> a -> a  
yesnoIf val yes no = if yesno val then yes else no

main = print $ yesnoIf [2,3,4] "YEAH!" "NO!"