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