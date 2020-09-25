def stones(n, a, b)
  n.times.map { |i| (b * i) + (a * ((n - 1) - i)) }.uniq.sort
end