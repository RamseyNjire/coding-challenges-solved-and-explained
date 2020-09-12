def palindromeIndex(s)
  return -1 if s.length <= 1 
  
  def is_a_palindrome(array)
    array.eql?(array.reverse)
  end

  string_array = s.split("")

  return -1 if is_a_palindrome(string_array)


  string_array.each_with_index do |elem, index|
    if string_array[-(index + 1)] != elem
      arr_one = string_array.dup
      arr_one.delete_at(index)
      arr_two = string_array.dup
      arr_two.delete_at(-(index + 1))

      if is_a_palindrome(arr_one)
        return index
      elsif is_a_palindrome(arr_two)
        return string_array.length - (index + 1)
      else
        return -1
      end
    else
      next
    end
      
  end

end