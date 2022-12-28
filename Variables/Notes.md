# Variables
- variables are used to store information to be referenced and manipulated in a computer program. Think of variables as containers that hold information.


# Assigning value to variables
- make sure variable name is accurately descriptive and understandable.
ex:
  first_name = "Bryant"

  first_name
  => "Bryant"

# Getting data from a user
- one way to get information from user is through the gets method. gets stands for get string
irb :001 > name = gets
Bob
=> "Bob\n"

- \n appears at the end is the "newline" character and represents the enter key. by attaching chomp to gets we get rid of that newline
irb :001 > name = gets.chomp
Bob
=> "Bob"

# Variable Scope
- a variable's scope determines where in a program a variable is avaialable for use. 
- a variable's scope is defined by where the variable is initialized or created.
- in ruby variable scope is defined by a method definition or block

## variable scope and method definitions
- think of methods as pieces of reusable code that program can execute many times
- methods have self-contained scope
  - only variables initialized within the methods body can be referenced or modified within the method's body
  - additionally variables initialized inside a method's body aren't available outside the method's body

name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

print_full_name 'Peter', 'Henry'   # prints Peter Henry
print_full_name 'Lynn', 'Blake'    # prints Lynn Blake
print_full_name 'Kim', 'Johansson' # prints Kim Johansson
puts name                          # prints Somebody Else

## variable scope and blocks
- blocks are pieces of code that follow a method's invocation delimited by curly braces or do/end

total = 0
[1, 2, 3].each { |number| total += number }
puts total # 6

total = 0
[1, 2, 3].each do |number|
  total += number
end
puts total # 6

- look different but behavior is identical
- code can access and modify variables that are defined outside the block, so both blocks can access and modify total. however any variavles initialized inside the block(such as number) can't be accessed by the outer code


# Types of Variables
- constant variables are used for storing data that never needs to change.
MY_CONSTANT = 'I am available throughout your app.'

- global variables are declared by starting variable name with dollar sign $. these variables are available throughout entire overriding all scope boundaries.
$var = 'I am also available throughout your app.'

- class variables declared by @@ are accessible by instances of your class as well as the class itself
@@instances = 0

- instance variables declared by @ are available throughout the current instance of the parent class
@var = 'I am available throughout the current instance of this class.'

- local variable obey all scope boundaries
var = 'I must be passed around to cross scope boundaries.'