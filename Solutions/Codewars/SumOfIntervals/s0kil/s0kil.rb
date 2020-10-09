def sum_of_intervals(intervals)
  intervals.reduce([]) { |acc, interval| acc | (interval.first...interval.last).to_a }.size
end
