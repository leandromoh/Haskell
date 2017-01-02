  
main = do
         putStrLn "digite um numero entre 1 e 1000"
         bla 457


bla :: Int -> IO ()
bla n = do
          numberStr <- getLine
          let number = read numberStr
          if number == n
              then do
                     putStrLn "acertou"
                     return ()
              else do
                     let msg = if number < n then "muito baixo!" else "muito alto!"
                     putStrLn msg
                     bla n
              
