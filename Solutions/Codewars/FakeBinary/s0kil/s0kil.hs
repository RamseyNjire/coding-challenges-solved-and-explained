import Data.Char (digitToInt)
import Prelude (String, (<))

fakeBin :: String -> String
fakeBin [] = []
fakeBin (head : tail) =
  let number = digitToInt head
      binary = if number < 5 then '0' else '1'
   in binary : fakeBin tail
