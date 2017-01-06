data Bla a = Bla Int a deriving  (Eq, Ord, Show, Read, Bounded) -- Enum)


instance Functor Bla where
  fmap f (Bla a b) = Bla a $ f b


instance Applicative Bla where
  pure = Bla 0
  Bla _ f <*> x = f <$> x


main = print $ (++) <$> pure "hello" <*> Bla 5 "_world"
