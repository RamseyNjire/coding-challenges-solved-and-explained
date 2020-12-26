import Prelude (Int, Integer, mod, take, (==))

countBy :: Integer -> Int -> [Integer]
countBy x n = take n [i | i <- [1 ..], i `mod` x == 0]
