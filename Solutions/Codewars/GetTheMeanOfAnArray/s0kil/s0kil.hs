import Prelude (Int, div, length, sum)

getAverage :: [Int] -> Int
getAverage marks =
  sum marks `div` length marks
