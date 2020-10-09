def bingo(ticket, win)
  mini_wins = ticket.map { |a| a.first.codepoints.any? { |c| c == a.last } }.count(true)
  mini_wins >= win ? 'Winner!' : 'Loser!'
end
