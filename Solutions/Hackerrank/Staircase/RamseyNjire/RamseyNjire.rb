def staircase(n)
  n.times do |i|
    puts ("#" * (i + 1)).rjust(n)
  end
end