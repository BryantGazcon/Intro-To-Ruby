# Split array so that each string is an individual element

array = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees'] 

array_new = array.map {|string| string.split }

array_new = array_new.flatten

p array_new

