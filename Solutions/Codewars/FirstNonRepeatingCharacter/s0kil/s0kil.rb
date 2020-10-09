def first_non_repeating_letter(s, d = s.downcase)
  d.chars.find.with_index { |c, i| return s[i] if d.count(c) == 1 } || ''
end
