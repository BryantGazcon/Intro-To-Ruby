# What are Methods and Why Do We Need Them?
- often we will have a piece of code that needs to be executed many times in a program, through methods we can extract the common code to one place.

def say
  # method body goes here
end

def say(words)
  puts words
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

- (words) is what is called a parameter. Parameters are used when you have data outside of a method definition's scope but you need to access to it within the method defintion
- arguments are pieces of information that are sent to a method to be modified or used to return a specific result

## Default Parameters
- def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")

- say() prints hello because of the default parameter that is used whenever our method is called without any arguments

## Optional Parentheses
- many rubyists will leave off parentheses when calling methods. Instead of say() can just be rewritten as say

## Method definition and local variable scope
- method definition creates its iwn scope outside the regular flow of execution
- local variables within a method defintion cannot be referenced from outside of the method definition

# obj.method or method(obj)
- two ways to call methods 
- some_method(obj) format is when you send arguments to a method call. obj is the argument being passed into some_method
- other way is through an explicit caller a_caller.some_method(obj)


# Mutating Arguments
- when calling a method, one or more arguments can be altered permanently; that is, we are mutating arguments


# puts vs return: The Sequel
- in ruby every method returns the evaluated result of the last line that is executed
- ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it
- return is not required in order to return something from a method, this is a feature of ruby language

# Chaining Methods
- because evry method call returns something we can chain methods together

def add_three(n)
  n + 3
end

- above method will return - not print out but return - the value passed in, incremented by 3

add_three(5)        # returns 8

# Method Calls as Arguments
- def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

- add(20, 45)
=> 65
# returns 65

subtract(80, 10)
=> 70
# returns 70
- def multiply(num1, num2)
  num1 * num2
end

- multiply(add(20, 45), subtract(80, 10))
=> 4550
# returns 4550

- add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
=> 560

# The Call Stack
- call stack helos ruby keep track of what method is executing as well as where execution should resume when it returns
