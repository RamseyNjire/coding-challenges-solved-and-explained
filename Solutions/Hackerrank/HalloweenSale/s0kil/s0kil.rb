def how_many_games(price, discount, minimum, wallet)
  new_wallet = wallet - price
  new_price = [(price - discount), minimum].max

  # Price Is Now The Minimum
  return wallet / minimum if price == minimum
  # Base Case
  return 0 unless new_wallet >= 0

  1 + how_many_games(new_price, discount, minimum, new_wallet)
end
