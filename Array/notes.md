# What is an Array?
- an array is an ordered list of elements that can be of any tape. define an array by placing a list of elements between brackets
- arrays can have anything in them even other arrays, they can have strings, integers, and floats
## Array Methods
- to find first element of an array you can use first method (array.first)
- to find last element array.last
- to find third element in an array we can call an element using its index number array[3]
- all array indices start with 0

# Things to remember
- there are two things to take into account when working with arrays. The first thing is that some methods mutate the caller. For instance the pop method mutates the caller/object which in this case would be an array because this method is modifying the array. The second thing to take into account is methods that dont mutate the caller, in this instance methods such as select dont modify the original array, meaning that you must create a new variable and set it equal to the array.method to get the new array
- always remember to ask yourself, " is this method returning new data, or is the original data being modified?"

# Modifying Arrays
- to take the last item off an array permanently we can use pop method
- when calling the pop methid the original array variable was modified (pop is a method that mutates the caller (array is caller .pop is method))
- mutating the caller modifies the object(this case the array) used to call the method
- to add item back to array permanently you can use push method and send it the parameters you'd like to add
- .push('a string') or array << 'another string'
- PUSH, <<, and pop mutate the caller so original array is modified
- map method iterates over an array applying a block to each element of the array and returns a new array with those results
- collect method is same as map -  they do the same thing
- collect method/map method dont mutate the caller meaning that there will be no change to the inital array
- delete_at method eliminate the value at a certain index, modifies array permanently (array.delete_at(1)). deletes all instances of that value from array
- uniq method iterates through an array deleting any duplicate values that exist and returns a new array, does not modify the original

# Iterating Over an Array
- select method iterates over an array and returns a new array that includes any items that return true to expression
- select method does not mutate the caller (original array is unmodified)
irb :001 > numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

irb :002 > numbers.select { |number| number > 4 }
=> [5, 6, 7, 8, 9, 10]

irb :003 > numbers
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Methods With a !
- the bagin suffix (!) at end of method name usually indicate that the method will change/mutate the caller permanently
- however, not always the case, make sure to check ruby documentation to see if it will behave desctructively (destructive means mutating the caller/modifying original )
- pop and push are destructive but dont have !

# Mutating the Caller and Arguments
def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
mutate(a)
not_mutate(a)

puts a

- the last line will solely output [1,2,3,4,5]
- mutate method (pop) performed a desctructive action on its argument therefore modifying the array
- the not_mutate method performed a non-destructive action(select) and therefore the original variable was not modified
- mutate, arr.pop mutates its caller which in turn mutates argument passed to mutate
- not_mutate, arr.select does not mutate its caller so not_mutate doesnt mutate its arguments

# Nested Arrays
- you can create arrays within arrays
- lets saying you're having a futbol tournament and want to keep track of all the teams

irb :001 > teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
=> [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]

# Comparing Arrays
- can compare arrays for equality using the == operator
- unshift method adds values to the start of the list whereas push adds values to the end of the list

irb :001 > a = [1, 2, 3]
=> [1, 2, 3]
irb :002 > b = [2, 3, 4]
=> [2, 3, 4]
irb :003 > a == b
=> false
irb :004 > b.pop
=> 4
irb :005 > b.unshift(1)
=> [1, 2, 3]
irb :006 > a == b
=> true

# to_s
- to_s method is used to create a string representation of an array
- ruby does this behind the scence when using string interpolation to print an array to the screen

irb :001 > a = [1, 2, 3]
=> [1, 2, 3]
irb :002 > "It's as easy as #{a}"
=> "It's as easy as [1, 2, 3]"

# Common Array Methods
## include? 
- method checks to see if the argument given is included in the array, will return boolean value(such methods are called predicates)

irb :001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb :002 > a.include?(3)
=> true
irb :003 > a.include?(6)
=> false

## flatten
- flatten method can be used to take an array that contain nested arrays and create a one dimensional array. 

irb: 001 > a = [1, 2, [3, 4, 5], [6, 7]]
=> [1, 2, [3, 4, 5], [6, 7]]
irb: 002 > a.flatten
=> [1, 2, 3, 4, 5, 6, 7]

## each_index
- each_index method iterates through the array much like the each method however the variable represents the index number as opposed to the value at each index.
irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_index { |i| puts "This is index #{i}" }
This is index 0
This is index 1
This is index 2
This is index 3
This is index 4
=> [1, 2, 3, 4, 5]

## each_with_index
- each_with_index gives us the ability to manipulate both the value and the index by passing in two parameters to the block of code. first is the value and the second is the index

irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
1. 1
2. 2
3. 3
4. 4
5. 5
=> [1, 2, 3, 4, 5]

## sort
- sort method is a way to return a sorted array
- non-destructive does not modifiy original data, but instead returns new data

## product
- product method can be used to combine two arrays and return an array that is a combination of all elements from all arrays
irb :001 > [1, 2, 3].product([4, 5])
=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]

# Each vs Map
- each provides a simple way of iterating over a collection in Ruby and is more preferred to using the for loop
- map also works on objects that allow for iteration
- each and map are important methods, use EACH for iteration and MAP for transformation



