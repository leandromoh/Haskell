muxList f (x:[]) = x
muxList f (x:xs) 
  | f x m = x 
  | otherwise = m 
  where 
    m = muxList f xs

minList = muxList (<)

maxList = muxList (>)

maxList' [x] = x
maxList' (x1:x2:xs)
  | x1 > x2 = maxList' (x1:xs)
  | otherwise = maxList' (x2:xs)