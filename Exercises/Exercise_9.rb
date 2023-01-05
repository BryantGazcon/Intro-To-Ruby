#Suppose you have a hash 

h = {a:1, b:2, c:3, d:4}

h[:b]  # get the value of key :b

h[:e] = 5   #add to this hash the key:value pair '{e:5}'

h.delete_if {|k,v| v < 3.5}   #remove all key:value pairs whose value < 3.5

p h 