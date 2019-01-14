module OddsOnly where

oddsOnly :: Integral a => [a] -> [a]
oddsOnly [] = []
oddsOnly (x : xs)
  | odd x = x : oddsOnly xs
  | otherwise = oddsOnly xs

oddsOnly2 :: Integral a => [a] -> [a]
oddsOnly2 [] = []
oddsOnly2 (x : xs) = (if odd x then (x:) else id) . oddsOnly2 $ xs