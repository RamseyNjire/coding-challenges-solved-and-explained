def separate_liquids(glass)
  return glass if glass.empty?

  density = { 'H' => 1.36, 'W' => 1.00, 'A' => 0.87, 'O' => 0.80 }.freeze
  glass.flatten.sort { |a, b| density[a] <=> density[b] }.each_slice(glass.first.size).to_a
end
