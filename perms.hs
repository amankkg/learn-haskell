module Perms where

-- perms :: [a] -> [[a]]
perms l = f l where
  f [] = [[]]
  f [x] = [[x]]
  f [x, y] = [[x,y], [y,x]]
  f [x, y, z] = [[x,y,z], [x,z,y], [y,x,z], [y,z,x], [z,x,y], [z,y,x]]
  f (x:xs) = map (x:) (f xs) ++ (map (++ [x]) (f xs))
  -- f (x:xs) = (map ([x] ++) (f xs)) ++ (map (++ [x]) (f xs))
