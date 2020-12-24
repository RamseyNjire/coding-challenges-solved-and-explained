import Prelude (Num, (+))

sum :: Num a => [a] -> a
sum [] = 0
sum (head : tail) = head + sum tail
