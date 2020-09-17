def surfaceArea(a)
	front_area = a.first.sum
	back_area = a.last.sum
	left_area = a.transpose.first.sum
	right_area = a.transpose.last.sum
	top_area = a.length * a[0].length
	bottom_area = top_area
	row_exposed_faces = 0
	column_exposed_faces = 0

	a.each_with_index do |arr, index|
		arr.each_with_index do |el, i|
			row_exposed_faces += (el - arr[i + 1]).abs unless arr[i + 1] == nil
		end
	end

	a.transpose.each_with_index do |arr, index|
		arr.each_with_index do |el, i|
			column_exposed_faces += (el - arr[i + 1]).abs unless arr[i + 1] == nil
		end
	end

	front_area + back_area + left_area + right_area + top_area + bottom_area + row_exposed_faces + column_exposed_faces
end