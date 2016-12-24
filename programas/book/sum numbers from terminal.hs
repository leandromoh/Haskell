main :: IO ()
main = do
    soma <- foo 0
    print soma

	
foo :: Int -> IO Int
foo i = do
    str <- getLine
    let n = (read str :: Int)
    if n /= 0
        then foo (n + i)
        else return i
		
------------------------------------------------------------

import Data.List
main = do
    contents <- getContents
    print $ sum . map read . lines $ contents