#Print out values greater than 5

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Version 1
array.each do |num|
  if num > 5
   puts num
  end
end
# Version 2
array.each {|num| puts num if num > 5}