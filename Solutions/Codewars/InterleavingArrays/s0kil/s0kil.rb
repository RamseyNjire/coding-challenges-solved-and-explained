def interleave(*arrays)
  return [] if arrays.size.zero?

  largest = arrays.map(&:size).max

  padded_arrays =
    arrays.map { |a| a + Array.new(largest - a.size) }

  head, *tail = padded_arrays
  head.zip(*tail).flatten
end
