def staircase(n, r = n)
  return '' if n.zero? # Base Case

  staircase(n - 1, r) + (('#' * n).rjust(r) + "\n")
end
