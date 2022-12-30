# Loops & Iterators
- loop is the repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met

# A Simple Loop
- simplest way to create a loop in ruby is using the loop method
- loop takes a block which is denoted by {} or by do..end
- loop will execute any code within the block until you manually intervene or inster a break statement inside the block

# Controlling Loop Execution
- useful_loop.rb

i = 0
loop do
  i = i + 1
  puts i
  break         # this will cause execution to exit the loop
end

- break keyword allows us to exit a loop at any point, so any code after a break will not be executed
- next keyword skips the rest of the current iteration and start executing the next iteration of the loop
- from inside loop block you can access variables initialized outside of the block, however from outside of the block you cant access any variables that were initialized inside the block

# While Loops
- a while loop is given a parameter that evaluates as either true or false
- when the expression becomes false the while loop is not executed again and program continues after while loop

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1 # <- refactored this line
end

puts "Done!"

- x -=1 is same as x = x - 1
- since we are using x>= 0 to test if we should execute the loop, THE CODE WITHIN THE LOOP MUST MODIFY THE VARIABLE X IN SOME WAY. if not x >= 0  will always evaluate to true causing an infinite loop
- Unlike loop methid WHILE is not a method meaning that variables can be initialized inside the WHILE loop and be called from the outside

# Until Loops
- until loop is opposite of while loop

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"

- as with while loops, until is not a method therefore, they do not have their own scope


# Do/While Loops
- in "do/while" loops the conditional check is place at the end of the loop as opposed to the beginning
- we have to use loop and break to emulate the behavior of a do/while loop
## perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end
- this function will only repeat the question once, if user types anything other than Y, then it will break, if users types Y then question will be asked again etc

# For Loops
- for loops are used to loop over a collection of elements.
- for loops have a definite end since its looping over a finite number of elements
- begins with for, followed by a variable then in and then a collection of elements
- as with WHILE and UNTIL loops, for is not implemented as a method, therefore a for loop does not have its own scope

# Conditionals Within Loops
- if you place NEXT reserved word in a loop it will jump from that line to the next loop iteration without executing the code beneath it
- if you place BREAK reserved word in loop it will exit the loop immediately without executing any code in the loop
- most rubyists where possible prefer iterators over loops

# Iterators
- iterators are methods that naturally loop over a given set of data and allow you to operate on each element in the collection
- practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }
- block is just some lines of code ready to be executed
- when working with blocks there are two styles, we use curly braces when everything can fit on one line, and the words do and end when performing multi-line operations

# Recursion
- recursion is another way to create a loop in ruby
- recursion is the act of calling a method from within itself
- def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end
- MAIN IDEA : there is some baseline condition that returns a value which then unwinds the recursive calls, think of the successive recursive calls building up, until some value is returned and only then can recursive calls be evaluated
