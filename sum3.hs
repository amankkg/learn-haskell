module Sum3 where

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 [] [] [] = []
sum3 xs ys zs = f1 xs + f1 ys + f1 zs : sum3 (f2 xs) (f2 ys) (f2 zs) where
  f1 [] = 0
  f1 (a : _) = a
  f2 [] = []
  f2 as = tail as
