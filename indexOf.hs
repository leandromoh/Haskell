indexOf str sub startPosition
  | startPosition > len1 = -1
  | len1 < len2 = -1
  | otherwise = goThroughString str sub 0 (len1 - len2)
  where
    len1 = length str
    len2 = length sub
    
goThroughString [] _ _ _ = -1
goThroughString (x:xs) sub pos maxInd
  | pos > maxInd = -1
  | tryMatch (x:xs) sub = pos
  | otherwise = goThroughString xs sub (pos+1) maxInd

tryMatch _ [] = True
tryMatch [] (y:ys) = False
tryMatch (x:xs) (y:ys)
 | x /= y = False
 | otherwise = tryMatch xs ys
