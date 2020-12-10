import Data.Char(toUpper)
import Data.String(words)
import Data.List(intercalate)

getInitials :: String -> String
getInitials = intercalate "." . map (\c -> [toUpper $ head s]) . words
