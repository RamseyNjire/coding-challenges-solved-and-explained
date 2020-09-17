def surface_area(a)
  front_area = a.first.sum
  back_area = a.last.sum
  left_area = a.transpose.first.sum
  right_area = a.transpose.last.sum
  top_area = a.length * a.first.length
  bottom_area = top_area
  row_exposed_faces =
    a.map do |row|
      row.each_with_index.reduce(0) do |exposed_faces, (el, i)|
        row[i + 1].nil? ? exposed_faces : exposed_faces + (el - row[i + 1]).abs
      end
    end.sum
  column_exposed_faces =
    a.transpose.map do |col|
      col.each_with_index.reduce(0) do |exposed_faces, (el, i)|
        col[i + 1].nil? ? exposed_faces : exposed_faces + (el - col[i + 1]).abs
      end
    end.sum
  front_area + back_area +
    left_area + right_area +
    top_area + bottom_area +
    row_exposed_faces + column_exposed_faces
end