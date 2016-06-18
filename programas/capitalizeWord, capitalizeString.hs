import Data.Char

dropWhile' f [] = []
dropWhile' f (x:xs) = if f x then dropWhile' f xs else xs

takeWhile' f [] = []
takeWhile' f (x:xs) = if f x then x : takeWhile' f xs else []

split c [] = []
split c xs = (takeWhile' (/= c) xs) : split c (dropWhile' (/= c) xs)

join c [] = []
join c (x:[]) = x
join c (x:xs) = x ++ c ++ (join c xs)

isRoman [] = True
isRoman (x:xs)
  | not (elem x ['I','V','X','L','C','D','M']) = False
  | otherwise = isRoman xs

capitalizeWord str@(x:xs)
  | isRoman str = map toUpper str
  | length str > 3 = toUpper x : map toLower xs
  | otherwise = map toLower str

capitalizeString xs = (join " " (map capitalizeWord (split ' ' xs)))

main = print $ map capitalizeString ["ALGORÍTIMOS E LÓGICA DE PROGRAMAÇÃO", "LINGUAGEM DE PROGRAMAÇÃO", "LINGUAGEM DE PROGRAMAÇÃO IV", "LABORATÓRIO DE BANCO DE DADOS", "ESTRUTURAS DE DADOS", "ENGENHARIA DE SOFTWARE III", "PROGRAMAÇÃO ORIENTADA A OBJETOS"]
