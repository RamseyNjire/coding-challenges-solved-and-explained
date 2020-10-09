def letter_count(s)
  s.chars.uniq.map { |c| [c.to_sym, s.count(c)] }.to_h
end
