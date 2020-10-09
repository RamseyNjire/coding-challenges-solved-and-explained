def generateHashtag(str)
  return false if str.strip.empty?

  r = '#' + str.split(' ').map(&:capitalize).join
  r.size > 140 ? false : r
end
