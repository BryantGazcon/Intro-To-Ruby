 The Basics
## Literals
  - any notation that lets you represent a fixed value in source code.
  'Hello, world!'          // string literal
  375                      // integer literal
  3.141528                 // float literal
  true                     // boolean literal
  { 'a' => 1, 'b' => 2 }   // hash literal
  [ 1, 2, 3 ]              // array literal
  :sym                     // symbol literal
  nil                      // nil literal


## Strings
  - a string is a list of characters in specific seqeuence. You write string literals with single or double quotes
# Ex. 1: with double quotes
"The man said, 'Hi there!'"

# Ex 2: with single quotes and escaping
'The man said, \'Hi there!\''


## Symbols
  - created by placing a colon : before a word
  - symbols are used when you want to reference something like a string but don't ever intend to print it to the screen or change it.
  # Examples of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"

## Numbers
  - most basic form of a number is an INTEGER (whole number). 
  - more complex form of a number is called a float (decimal number).
# Example of integer literals
1, 2, 3, 50, 10, 4345098098

# Example of float literals
1.2345, 2345.4267, 98.2234


## Nil
 - nil is a way to express "nothing" in ruby
 - a variable with a value of nil could be described as having 'nothing' or being ' completely empty'
 - .nil? is a way to check if something is nil
 - nil can be used within a conditional statement and will be treated as false
 - however nil and false are not equivalent


## Operations
- to add ( 1+ 1)
- to subtract (1 - 1)
- to multiply (1 * 1)
- to divide ( 16 / 4)
- modulo ( 16 % 4)
- the modulo operator returns the remainder of a division operation
# multiplying and dividing floats
- (15.0 / 4 ) = 3.75
- whenever using a float in an operation, Ruby always returns a float
# Equality Comparison
- to test the equality of two things you can use the == operator
and returns either true or false. true and false are known as boolean values
# String Concatenation
- when you use the + operator to join two strings together, you are performing a string concatenation.
"foo" + "foo"
=> foofoo


## Type Conversion
- to convert a string to an integer we use .to_i ('12'.to_i => 12)
- to convert integer to float .to_f
- to convert integer to string .to_s


## Basic Data Structures
- Array is used to organize information into an ordered list. list can be mad eup of strings, integers, floats, booleans, or any other data type. denoted by square brackets [] each array of integers can accessed via an index
[1,2,4,5,6][0]
=> 1
- Hash, sometimes referred to as dictionary is a set of key-value pairs. represented with curly braces. a key-value pair is an association where a key is assigned a specific value
- use keys to set or retrieve values
{:dog => 'barks'}


## Expressions and Return
- => hash rocket is denoted in irb followed by whatever your ruby expression returns
- an expression anything that can be evaluated and pretty much everything in ruby is an expression
-expressions always return something even if its an error message or nil


## Puts vs Return
- puts method tells ruby to print something to the screen. puts does not return what is printed to the screen. expressions do something, but they also return something. value returned is not necessarily the action that was performed