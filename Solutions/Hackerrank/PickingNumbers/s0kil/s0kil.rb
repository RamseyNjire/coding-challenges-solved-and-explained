# This Solution Is Efficient When The Elements Of Array `a` Are Not All Unique, Example: `Array(1..99)`
def picking_numbers(a)
  unique = a.uniq

  # Handle Cases Of Repetitive Item, [1,1,1,1, etc...]
  return a.count if unique.count == 1

  unique
    .combination(2)
    .select { |c| (c.first - c.last).abs == 1 }
    .map { |c| c.reduce(0) { |sum, n| sum + a.count(n) } }
    .push(unique.map { |n| a.count(n) }.max) # Maybe (One Element) > (Combination Of Two Elements)
    .max
end
