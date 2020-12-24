import Data.Char (toUpper)
import Data.List (intercalate)
import Data.String (words)
import Prelude (String, head, map, ($), (.))

getInitials :: String -> String
getInitials =
  intercalate "." . map (\w -> [toUpper $ head w]) . words
