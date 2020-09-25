def game_of_thrones(s)
  s.each_char.uniq.count { |c| s.count(c).odd? } <= 1 ? 'YES' : 'NO'
end
