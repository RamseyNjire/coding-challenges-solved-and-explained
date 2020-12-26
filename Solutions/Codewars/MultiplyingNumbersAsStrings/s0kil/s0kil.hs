multiply :: String -> String -> String
multiply xs ys =
  let asInteger x = read x :: Integer
   in show (asInteger xs * asInteger ys)
