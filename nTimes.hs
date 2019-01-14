module Ntimes where

nTimes :: a -> Int -> [a]
nTimes x n = fn 0 [] where
  fn i xs
    | i >= n = xs
    | otherwise = fn (i + 1) (x : xs)
