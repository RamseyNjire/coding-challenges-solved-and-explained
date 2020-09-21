def palindrome_index(string)
  is_palindrome = ->(str) { str == str.reverse }

  return -1 if string.length <= 1 || is_palindrome.call(string)

  string_without_char = ->(str, char_index) { str[0...char_index] + str[(char_index + 1)..-1] }

  string.each_char.with_index do |char, char_index|
    last_char_index = string.length - char_index - 1
    last_char = string[last_char_index]
    # Optimization To Skip Current Iteration If Both Sides Equal
    next if char == last_char

    return char_index if is_palindrome.call(string_without_char.(string, char_index))
    return last_char_index if is_palindrome.call(string_without_char.(string, last_char_index))
  end
end
