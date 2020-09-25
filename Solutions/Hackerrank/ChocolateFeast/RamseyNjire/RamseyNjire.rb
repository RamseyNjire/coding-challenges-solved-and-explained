def chocolateFeast(n, c, m)
  number_of_wrappers = n / c

  return number_of_wrappers if number_of_wrappers < m


  chocolates = number_of_wrappers
  until number_of_wrappers < m
    new_chocolates = (number_of_wrappers/m).floor
    chocolates += new_chocolates
    number_of_wrappers = (new_chocolates + (number_of_wrappers % m))
  end

  chocolates

end