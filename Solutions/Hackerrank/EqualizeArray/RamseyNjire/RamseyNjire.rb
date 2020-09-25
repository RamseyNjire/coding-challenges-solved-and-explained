def equalizeArray(arr)
  if arr.uniq.length == arr.length
    return arr.length - 1
  elsif arr.length == 1
    return 0
  else
    max_elem = 0

    arr.uniq.each {|i| max_elem = i if arr.count(i) > arr.count(max_elem)}

    arr.length - arr.count(max_elem)
  end

end