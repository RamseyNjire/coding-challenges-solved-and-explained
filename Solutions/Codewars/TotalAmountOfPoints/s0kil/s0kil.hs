import Data.Char (digitToInt)
import Prelude (Int, Ord, String, head, last, map, sum, ($), (.), (<), (==), (>))

matchPoints :: Ord a => (a, a) -> Int
matchPoints (x, y)
  | x == y = 1
  | x < y = 0
  | x > y = 3

points :: [String] -> Int
points matches =
  let match string = (digitToInt $ head string, digitToInt $ last string)
   in sum $ map (matchPoints . match) matches
