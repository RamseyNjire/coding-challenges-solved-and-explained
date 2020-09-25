def beautiful_triplets(digit, arr)
  arr.count { |e| arr.include?(e + digit) && arr.include?(e + (2 * digit)) }
end
