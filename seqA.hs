module SeqA where

seqA :: Integer -> Integer
seqA 0 = 1
seqA 1 = 2
seqA 2 = 3
seqA n =
  let
    helper (a, b, c) i
      | i > n = c
      | otherwise = helper (b, c, (c + b - 2 * a)) (i + 1)
  in helper (1, 2, 3) 3
