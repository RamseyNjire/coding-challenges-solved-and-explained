def sock_merchant(_number_of_socks, socks)
  socks.uniq.map do |sock_color|
    color_count = socks.count(sock_color)
    pairs = color_count - (color_count % 2)
    pairs / 2
  end.sum
end
