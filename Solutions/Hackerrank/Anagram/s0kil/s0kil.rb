def anagram(string)
  return -1 if string.size.odd?

  first_half =
    string
    .slice(0...(string.size / 2))
    .split('')

  second_half =
    string
    .slice((string.size / 2)..string.size)
    .split('')

  # Characters Required To Make Second Half Into An Anagram
  characters = {}

  first_half.each do |c|
    characters[c] = (characters[c] ? characters[c] + 1 : 1)
  end

  second_half.each do |c|
    characters[c] = characters[c] - 1 if characters[c]
    characters.delete(c) if characters[c] == 0
  end

  characters.values.sum
end
