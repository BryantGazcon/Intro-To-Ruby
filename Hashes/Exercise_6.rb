# Given the following code
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

my_hash = {x: "some value"}
=> my_hash = {x: "some value"}
# this hash takes x as a symbol where as the one below the 
# uses the x variable string as its key

my_hash2 = {x => "some value"}
=> {"hi there" => "some value"}