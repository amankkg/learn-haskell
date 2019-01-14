module IsPalindrome where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (x : xs)
  | x /= (last xs) = False
  | otherwise = isPalindrome . init $ xs
