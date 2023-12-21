module Pangram (isPangram) where

import Data.List
import Data.Char

isPangram :: String -> Bool
isPangram = 
  (== 26) 
  . length 
  . map head 
  . group 
  . sort 
  . filter (\c -> isAscii c && isLetter c) 
  . map toLower