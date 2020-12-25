import Prelude (Int, (<))

century :: Int -> Int
century year
  | year < 0100 = 1
  | year < 0200 = 2
  | year < 0300 = 3
  | year < 0400 = 4
  | year < 0500 = 5
  | year < 0600 = 6
  | year < 0700 = 7
  | year < 0800 = 8
  | year < 0900 = 9
  | year < 1000 = 10
  | year < 1100 = 11
  | year < 1200 = 12
  | year < 1300 = 13
  | year < 1400 = 14
  | year < 1500 = 15
  | year < 1600 = 16
  | year < 1700 = 17
  | year < 1800 = 18
  | year < 2000 = 19
  | year < 2100 = 20
