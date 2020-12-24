import Data.Char (toUpper)
import Data.List (intercalate)
import Data.String (words)

getInitials :: String -> String
getInitials =
  intercalate "." . map (\w -> [toUpper $ head w]) . words
