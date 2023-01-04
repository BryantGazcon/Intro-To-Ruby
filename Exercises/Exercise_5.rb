# Get rid of 11. And append a 3.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = array.select {|num| num if num % 2 == 1  }

new_array

array.push(11)    # add value to end of list
array.unshift(0)  # add value to start of list

array.pop
array.push(3)
print array
