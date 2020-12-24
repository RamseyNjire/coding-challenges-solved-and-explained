paperwork :: Int -> Int -> Int
paperwork classmates pages
  | pages < 0 = 0
  | classmates < 0 = 0
  | otherwise = classmates * pages
