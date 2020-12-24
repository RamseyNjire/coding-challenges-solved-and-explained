import Prelude (String, (++))

greet :: String -> String
greet "Johnny" = "Hello, my love!"
greet name = "Hello, " ++ name ++ "!"
