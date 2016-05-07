distribui [] = [[],[]]
distribui [x] = [[x],[]]
distribui (x:y:xs) = [x:rec !! 0, y:rec !! 1]
                     where rec = distribui xs

intercala [] ys = ys
intercala xs [] = xs
intercala (x:xs) (y:ys)
  | x <= y = x:intercala xs (y:ys)
  | otherwise = y:intercala (x:xs) ys

ordena [] = []
ordena [x] = [x]
ordena xs = intercala (ordena (rec !! 0)) (ordena (rec !! 1))
            where rec = distribui xs

main = print $ ordena [0,9,2,7,4,5,6,3,8,1]
