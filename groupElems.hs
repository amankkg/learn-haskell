module GroupElems where

groupElems :: Eq a => [a] -> [[a]]
groupElems = fn [] where
  fn acc [] = acc
  fn [] (x : xs) = fn [[x]] xs
  fn acc (x : xs)
    | lastHead acc == x = fn (append x acc) xs
    | otherwise = fn (addNew x acc) xs
  lastHead = head . last
  append x groups = (init groups) ++ [(last groups) ++ [x]]
  addNew x groups = groups ++ [[x]]
