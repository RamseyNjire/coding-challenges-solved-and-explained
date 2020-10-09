def valid_parentheses(string)
  r = string.gsub(/[^\(\)]/i, '')
  return true if r.empty?

  b = r.gsub(/\(\)/, '')
  return false if r == b

  c = valid_parentheses(b)
  c ? true : false
end
