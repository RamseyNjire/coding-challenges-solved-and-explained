import Prelude (Int, Maybe (Just, Nothing), maximum, minimum, sum, (-))

sumArray :: Maybe [Int] -> Int
sumArray Nothing = 0
sumArray (Just []) = 0
sumArray (Just [_]) = 0
sumArray (Just xs) =
  let low = minimum xs
      hig = maximum xs
   in sum xs - low - hig
