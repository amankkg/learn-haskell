module Integration where

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = fn 0 1 where
  n = 1e3 -- number of partitions in range [a,b]
  d = (b - a) / n -- delta
  fn acc k
    | k > n = acc -- range [a,b] exceeded
    | otherwise = fn (acc + next) (k + 1) where
      next = (d * (a' + b') / 2) -- approximation for the current partition
      (a', b') = (f $ a + d * (k - 1), f $ a + d * k) -- current partition (from, to)