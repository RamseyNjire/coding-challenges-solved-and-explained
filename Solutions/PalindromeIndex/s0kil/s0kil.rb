def palindrome_index(string)
  is_palindrome = ->(s) { s == s.reverse }

  return -1 if string.length <= 1 || is_palindrome.call(string)

  string_without_char =
    lambda { |s, char_index|
      s[0...char_index] + s[(char_index + 1)..-1]
    }

  string.each_char.with_index do |char, char_index|
    last_char_index = string.length - char_index - 1
    last_char = string[last_char_index]
    # Optimization To Skip Current Iteration If Both Sides Equal
    next if char == last_char

    if is_palindrome.call(string_without_char.call(string, char_index))
      # Current Char Is The Offender
      return char_index
    elsif is_palindrome.call(string_without_char.call(string, last_char_index))
      # Last Char Is The Offender
      return last_char_index
    end
  end
end
