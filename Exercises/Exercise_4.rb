# Append 11 to the end of the original array. Prepend 0 to the beginning.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = array.select {|num| num if num % 2 == 1  }

new_array

array.push(11)    # add value to end of list
array.unshift(0)  # add value to start of list
puts array

