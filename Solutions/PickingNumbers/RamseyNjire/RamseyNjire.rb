def pickingNumbers(a)
  counts = []
  100.times { counts << 0 }

  a.each { |e| counts[e] += 1}

  max = 2
  counts.each_with_index do |e, i|
    adjacent_sum = e + counts[i -1]
    max = [max, adjacent_sum].max
  end
  p max
end