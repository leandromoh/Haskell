range start step limit = takeWhile (f limit) . iterate (step+) $ start
 where 
   f = if step >= 0 then (>=) else (<=)

main = print $ range 0 1 10 ++ range 10 (-1) 0
