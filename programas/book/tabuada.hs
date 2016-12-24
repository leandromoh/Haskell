import Data.List

tabuada a = intercalate "\n" [ (show a) ++ " x " ++ (show t) ++ " = " ++ (show (a*t)) | t <- [1..10] ]

main = putStrLn $ tabuada 3