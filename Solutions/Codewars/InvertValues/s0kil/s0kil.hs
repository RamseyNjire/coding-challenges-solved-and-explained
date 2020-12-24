import Data.Bits (complement)
import Prelude (Integer, map, (+))

invert :: [Integer] -> [Integer]
invert = map invertInteger
  where
    invertInteger n = complement n + 1
