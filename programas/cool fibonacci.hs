fibonacci = 0 : scanl (+) 1 fibonacci

main = print $ take 10 $ fibonacci
