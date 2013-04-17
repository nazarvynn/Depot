
#Sorting
arr = %w'apple box Beer cerry'

p '#Sorting elements'
p arr.sort
p arr.sort { |a, b| b <=> a }				# reverse
p arr.sort { |a, b| a.casecmp(b) }			# ignore case sensivity
p arr.sort { |a, b| b.size <=> a.size } 	# reverse using word size

p arr.sort_by { |i| i.downcase }

p arr.sort!		# with eaving
p arr.shuffle	# randomaizing

p arr.reverse!	# reverse array