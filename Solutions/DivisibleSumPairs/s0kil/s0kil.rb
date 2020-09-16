def divisible_sum_pairs(_n, k, ar)
  ar.combination(2).select { |c| (c.sum % k).zero? }.count
end
