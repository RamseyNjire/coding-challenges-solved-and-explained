import Prelude (Bool, Int, div, length, sum, (>))

betterThanAverage :: [Int] -> Int -> Bool
betterThanAverage peersScores myScore =
  let average numbers = sum numbers `div` length numbers
   in myScore > average peersScores
