import Data.Char (digitToInt)
import Prelude (Int, map, reverse, show, ($))

digitize :: Int -> [Int]
digitize number =
  reverse $ map digitToInt $ show number
