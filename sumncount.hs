module Sumncount where

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = fn (abs x) where
  fn x'
    | x' < 10 = (x', 1)
    | otherwise = ((mod x' 10) + sum, 1 + count) where
      (sum, count) = fn (div x' 10)
