def getMoneySpent(keyboards, drives, b)
  result =
    keyboards
    .product(drives)
    .map(&:sum)
    .select { |item| item <= b }
    .sort
    .last

  !result ? -1 : result
end