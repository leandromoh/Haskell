import Data.Char
import Data.List

isRoman = all (`elem` ['I','V','X','L','C','D','M'])

capitalizeWord str@(x:xs)
  | isRoman str = map toUpper str
  | length str > 3 = toUpper x : map toLower xs
  | otherwise = map toLower str

capitalizeString = intercalate " " . map capitalizeWord . words

main = print $ map capitalizeString ["ALGORÍTIMOS E LÓGICA DE PROGRAMAÇÃO", "LINGUAGEM DE PROGRAMAÇÃO", "LINGUAGEM DE PROGRAMAÇÃO IV", "LABORATÓRIO DE BANCO DE DADOS", "ESTRUTURAS DE DADOS", "ENGENHARIA DE SOFTWARE III", "PROGRAMAÇÃO ORIENTADA A OBJETOS"]
