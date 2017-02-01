def merge_sort(array)
	return array if array.length <= 1
	mergeing(merge_sort(array[0...array.length/2]), merge_sort(array[array.length/2..-1]))
end


def mergeing(array1, array2)
	sorted_array = []
	x, y = 0, 0 

	while x < array1.length || y < array2.length
		if x < array1.length && y < array2.length
			if array1[x] <= array2[y]
				sorted_array << array1[x]
				x += 1
			else
				sorted_array << array2[y]
				y += 1
			end
		elsif x < array1.length
			sorted_array << array1[x]
			x += 1
		elsif y < array2.length
			sorted_array << array2[y]
			y += 1
		end
	end
	sorted_array
end

array = [108, 15, 50, 4, 8, 42, 23, 16]
print merge_sort(array)