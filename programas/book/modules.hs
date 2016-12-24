module Shapes   
( Point(..)  
, Shape(..)  
, surface  
, nudge  
, baseCircle  
, baseRect  
) where  

--By doing Shape(..), we exported all the value constructors for Shape, so that means that whoever imports our module can make shapes by using the Rectangle and Circle value constructors. It's the same as writing Shape (Rectangle, Circle).