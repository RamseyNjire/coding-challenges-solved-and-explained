import Data.List (nubBy)

firstNonConsecutive :: [Int] -> Maybe Int
firstNonConsecutive = firstBy (\a b -> abs (a - b) > 1)

firstBy :: (a -> a -> Bool) -> [a] -> Maybe a
firstBy _ [] = Nothing
firstBy _ [_] = Nothing
firstBy predicate (first : second : rest) =
  if predicate first second
    then Just second
    else firstBy predicate (second : rest)
