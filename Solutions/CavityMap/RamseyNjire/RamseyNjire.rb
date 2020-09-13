def cavityMap(grid)
  grid = grid.map{|str| str.split("").map(&:to_i)}
  
  
  
  grid.map.with_index { |elem, index|
    if index == 0 || (index == grid.length - 1)
      elem.join("")
    else
      elem.map.with_index do |el, i|
        if i == 0 || (i == elem.length - 1)
          el
        elsif (elem[i - 1] < el && elem[i + 1] < el && grid[index - 1][i] < el && grid[index + 1][i] < el)
          el = 'X'
        else
          el
        end
      end.join("")
    end    
  }

end