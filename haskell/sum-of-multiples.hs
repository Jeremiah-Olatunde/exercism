



-- generate multiples
ms :: [Integer] -> Integer -> [[Integer]]
ms [] lim = []
ms (0:fs) lim = [[0]]
ms (f:fs) lim 
  = [ m | m <- [f, (2 * f)..(lim - 1)], all ((/= 0) . mod m) fs ] : ms fs lim

-- sum generated multiples
sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples = (foldr ((+) . sum) 0 .) . ms . reverse . filter (/= 0)

-- non-point-free form of line 13
-- sumOfMultiples fs lim = foldr ((+) . sum) 0 $ ms (reverse . filter (/= 0) $ fs) lim


-- O(n) merging two sorted lists
-- merge :: [Integer] -> [Integer] -> [Integer]
-- merge [] [] = []
-- merge xs [] = xs
-- merge [] ys = ys
-- merge (x:xs) (y:ys)
--   | x < y     = x : merge xs     (y:ys)
--   | otherwise = y : merge (x:xs) ys 

-- -- generate multiples of n in range [n, lim)
-- mn :: Integer -> Integer -> [Integer]
-- mn lim 0 = [0]
-- mn lim n = [n, (n + n)..(lim - 1)]

-- sumOfMultiples :: [Integer] -> Integer -> Integer
-- sumOfMultiples facts lim 
--   = sum
--   . map head 
--   . group 
--   . foldl merge [] 
--   . map (mn lim) $ facts


-----------------------------------------------------------------


-- -- O(n) merge
-- merge :: [Integer] -> [Integer] -> [Integer]
-- merge [] [] = []
-- merge xs [] = xs
-- merge [] ys = ys
-- merge (x:xs) (y:ys)
--   | x < y     = x : merge xs     (y:ys)
--   | otherwise = y : merge (x:xs) ys 

-- -- generate multiples of n in range [n, lim)
-- mn :: Integer -> Integer -> [Integer]
-- mn lim 0 = [0]
-- mn lim n = [n, (n + n)..(lim - 1)]

-- sumOfMultiples :: [Integer] -> Integer -> Integer
-- sumOfMultiples facts lim 
--   = foldl ((. head) . (+)) 0
--   . group 
--   . foldl ((. mn lim) . merge) [] $ facts 