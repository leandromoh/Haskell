indexOf str sub startPosition
  | startPosition >= len1 = -1
  | len1 < len2 = -1
  | otherwise = goThroughList str sub startPosition (len1 - len2)
  where
    len1 = length str
    len2 = length sub
    
goThroughList [] _ _ _ = -1
goThroughList (x:xs) sub pos maxInd
  | pos > maxInd = -1
  | tryMatch (x:xs) sub = pos
  | otherwise = goThroughList xs sub (pos+1) maxInd

tryMatch _ [] = True
tryMatch [] (y:ys) = False
tryMatch (x:xs) (y:ys)
 | x /= y = False
 | otherwise = tryMatch xs ys