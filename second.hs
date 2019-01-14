module Second where

second :: [a] -> a
second = head . tail

second2 :: [a] -> a
second2 (_ : x : _) = x
