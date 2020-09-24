def encryption(string)
  string_groups =
    string
    .scan(/.{1,#{Math.sqrt(string.length).ceil}}/)
    .map { |group| group.split('') }

  string_groups
    .delete_at(0)
    .zip(*string_groups)
    .map { |group| group.compact.join }
    .join(' ')
end
