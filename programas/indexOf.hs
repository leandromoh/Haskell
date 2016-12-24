import Data.List

indexOf str sub startPosition = let index = anyIndex (isPrefixOf sub) (tails $ drop startPosition str)
                                in if index < 0 then index else index + startPosition
                                
anyIndex p xs = aux p xs 0
 where 
  aux _ [] _ = -1
  aux p (x:xs) n = if p x then n else aux p xs (n+1)

main = print $ indexOf "hello world" "llo" 0
