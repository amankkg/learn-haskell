module Perms where

perms :: [a] -> [[a]]
perms [] = [[]]
perms (a:as) = concatMap (f a) (perms as) where
  f :: a -> [a] -> [[a]]
  f a [] = [[a]]
  f a (b:bs) = (a:b:bs) : (map (b:) (f a bs))
