def sock_merchant(_number_of_socks, socks)
  socks.uniq.reduce(0) do |total_pairs, sock_color|
    sock_color_count = socks.count(sock_color)
    pairs = (sock_color_count - (sock_color_count % 2)) / 2
    total_pairs + pairs
  end
end
