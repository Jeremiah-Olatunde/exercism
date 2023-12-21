module CollatzConjecture (collatz) where

collatz' :: Integer -> Integer
collatz' 1 = 0
collatz' n = 1 + collatz' (step n)
  where step x = if even x then div x 2 else 3 * x + 1

collatz :: Integer -> Maybe Integer
collatz n | n < 1     = Nothing
          | otherwise = Just (collatz' n)
