data Car = Car {company :: String, model :: String, year :: Int} deriving (Show) 


main = let c = Car {company="Ford", model="Mustang", year=1967}  
       in print $ model c