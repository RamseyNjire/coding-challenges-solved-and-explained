def even_fibonacci(num)
  cache = {}

  fib = lambda { |n|
    return 1 if [0, 1].include?(n)

    cache[n] = (fib.call(n - 1) + fib.call(n - 2)) if cache[n].nil?
    cache[n]
  }

  (2..num).reduce(0) do |acc, cur|
    r = fib.call(cur)
    return acc if r >= num

    acc += r if r.even?
    acc
  end
end
