CACHE = Hash.new { |h, k| h[k] = k < 2 ? k : h[k - 1] + h[k - 2] }

def fibonacci(num)
  CACHE[num]
end
