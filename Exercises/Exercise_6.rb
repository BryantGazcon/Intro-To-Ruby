# Get rid of duplicates without specifically removing any one value.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = array.select {|num| num if num % 2 == 1  }

new_array

array.push(11)   
array.unshift(0)  

array.pop
array.push(3)

array.uniq!
puts array