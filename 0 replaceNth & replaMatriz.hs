replaceNth n newVal (x:xs)
 | n == 0 = newVal:xs
 | otherwise = x:replaceNth (n-1) newVal xs

replaMatriz i j l newVal = replaceNth i newLine l
                           where newLine = replaceNth j newVal line
                                 line = l !! i

main = print $ replaMatriz 0 1 [[1,9],[3,4,5]] 2
