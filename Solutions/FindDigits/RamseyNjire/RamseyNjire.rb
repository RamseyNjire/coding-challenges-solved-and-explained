def findDigits(n)
  return 0 if n == 0
  return 1 if n <= 10
  divisors = n.digits.select { |d| n % d == 0 unless d == 0 }.count
  divisors
end