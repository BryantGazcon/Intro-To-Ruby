names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'


#TypeError: no implicit conversion of String into Integer
#from (irb):2:in `[]='
#from (irb):2
#from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'#

=begin
The problem is that we are attempting to put a string within the brackets
as a key. Arrays are indexed with integers not strings, just add a number
0,1,2,3
= end
