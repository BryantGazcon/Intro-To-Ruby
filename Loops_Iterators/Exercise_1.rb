# What does the each method in the following program 
#return after it is finished executing?
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

#just returns 1,2,3,4,5
# in block of code a + 1 the variable a refers to element
#in array. when adding 1 to a you are creating new value 
#however new value is not assigned to any variable so it
#is not saved or used in any way