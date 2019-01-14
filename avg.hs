module Avg where

avg :: Int -> Int -> Int -> Double
avg a b c = (/3) . fromInteger . toInteger $ a + b + c