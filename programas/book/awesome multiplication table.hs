bla limit x = Just x : map (\y -> if y < x then Nothing else Just (x * y)) [1..limit]

multTable limit = map (bla limit) [1..limit]

pad = "    "

fmt Nothing = pad
fmt (Just n) = let s = show n in drop (length s) (pad ++ s)

tableString tbl =  unlines . map (concatMap fmt) $ tbl

main = putStr . tableString . multTable $ 12
