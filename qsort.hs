module Qsort where

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x : xs) = qsort lt ++ x : qsort gte where
  lt = filter (< x) xs
  gte = filter (>= x) xs
