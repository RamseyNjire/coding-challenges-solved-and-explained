def rgb(*rgb)
  return '000000' if rgb.sum <= 0

  base16 = [*(0..15)].zip([*(0..9), *('A'..'F')]).to_h
  rgb.map do |a|
    a = a > 255 ? 255 : a
    f, s = (a / 16.to_f).divmod(1)
    s = (s * 16).to_i
    base16[f].to_s + base16[s].to_s
  end.join
end
