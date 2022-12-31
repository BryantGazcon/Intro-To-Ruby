# Flow Control
-  conditional statements are used to instruct the computer on the decision to make when given some conditions
- to make data do the right thing we use conditionals

# Conditionals
- a conditional is a fork in the road
- data approaches a conditional and the conditional tells the data where to go based on whether or not it meets the conditions based on some defined parameters
- conditionals formed using combination of if statements and comparison and logical operators (<, >, <=, >=, ==, !=, &&, ||)
- basic logical structures are defined with the reserved words if, else, elsif, and end

# Comparisons
-  a boolean value is either true or false
- == "is equal to" operator, both sides of operator must be equivalent
- != "not equal to" operator, anything to the left of the symbol is not equal to anything to the right
- < "less than" symbol
- > "greater than" symbol
- <= "less than or equal to"
- >= "greater than or equal to"

# Combining Expressions
- && "and" operator, expressions to the left and right of operator have to both be true for the entire expression to be evaluated to true
- || "or" operator, either expression to the left has to be true or the expression to the right has to be true to be evaluated to true
- ! "not" operator will change that boolean value to it's opposite
- ruby follows an order of precedence
  - <=, <, >, >= - Comparison
  - ==, != - Equality
  - && - Logical AND
  - || - Logical OR

# Ternary Operator
- ternary operator makes a quick if/else statement and keeps it all on one line, uses combination of ? and :
- true ? "this is true" : "this is not true"
  - if value to the left of the question mark is true then the first statment gets executed
- false ? "this is true" : "this is false"
  - if value left of the question mark is false, then the second statement gets executed
## When to use?
- ternary's expression's result should always be assigned to a variable, passed to a method as an argument, or returned by a method.

foo = hitchhiker ? 42 : 3.1415    // Assign result of ?: to a variable
puts(hitchhiker ? 42 : 3.1415)    // Pass result as argument
return hitchhiker ? 42: 3.1415    // Return result

- inappropriate uses
hitchhiker ? (foo = 42) : (bar = 3.1415) // Setting variables
hitchhiker ? puts(42) :puts(3.1415)      // Printing

# Case Statement
- case statement are quite similar in fuctionality to if/else statements with different interface
- case statements used reserved words case, when, else, and end
# case_statement.rb

a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# case_statement.rb <-- refactored

a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer

# True and False
- in Ruby every expression evaluates as true when used in flow control, except for false and nil