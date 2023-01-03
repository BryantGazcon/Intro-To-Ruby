# What is a Hash?
- a hash is a data structure that stores items by associated keys. 
- constrasted against arrays, which store items ordered by index
- entries in a hash are often referred as to key-value pairs
- old_syntax_hash = {:name => 'bob'}
=> {:name=>'bob'}
- new_hash = {name: 'bob'}
=> {:name=>'bob'}
- you can have hashes with many key-value pairs
person = { height: '6 ft', weight: '160 lbs' }
=> {:height=>'6 ft', :weight=>'160 lbs'}
## to add to an existing hash
irb :004 > person[:hair] = 'brown'
=> "brown"
irb :005 > person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

irb :006> person[:age] = 62
=> 62
irb :007> person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :age=>62}
## delete from existing hash
irb :008 > person.delete(:age)
=> 62
irb :009 > person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}
## retrieve piece of information from hash
irb :010 > person[:weight]
=> "160 lbs"
## Merge Two Hashes
irb :011 > person.merge!(new_hash)
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :name=>'bob'}

# Iterating Over Hashes
person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# Hashes as Optional Parameters
- can use hash to accept optional method parameters
## optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob") # no optional parameters
greeting("Bob", {age: 62, city: "New York City"}) # optional parameters

- {} are not required when a hash is the last argument
greeting("Bob", age: 62, city: "New York City")

# Hashes vs. Arrays 
- when deciding whether to use a hash or an array ask yourself:
- does this data need to be associated with a specific label? if yes, use a hash
- does order matter? if yes, then use an array
- Do I need a 'stack' or 'queue' structure? arrays are good at both

# Note on Hash Keys
- up to this point we have been using symbols in hash, but we can use other data types

irb :001 > {"height" => "6 ft"}     # string as key
=> {"height"=>"6 ft"}
irb :002 > {["height"] => "6 ft"}   # array as key
=> {["height"]=>"6 ft"}
irb :003 > {1 => "one"}             # integer as key
=> {1=>"one"}
irb :004 > {45.324 => "forty-five point something"}  # float as key
=> {45.324=>"forty-five point something"}
irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
=> {{:key=>"key"}=>"hash as a key"}

# Common Hash Methods
## Key?
- they key? method allows you to check is a hash contains a specific key, returns boolean value
irb :001 > name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19} => {"Bob"=>42, "Steve"=>31, "Joe"=>19}
irb :002 > name_and_age.key?("Steve")
=> true
irb :003 > name_and_age.key?("Larry")
=> false
## Select
- select method allows you to pass a block and will return any key-value pairs that evaluate to true when passed the block
irb :004 > name_and_age.select { |k,v| k == "Bob" }
=> {"Bob"=>42}
irb :005 > name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
=> {"Bob"=>42, "Joe"=>19}

## Fetch
- fetch method allows you to pass a given key and it will return the value for the key if it exists
irb :006 > name_and_age.fetch("Steve")
=> 31
irb :007 > name_and_age.fetch("Larry")
=> KeyError: key not found: "Larry"
     from (irb):32:in `fetch'
     from (irb):32
     from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
irb :008 > name_and_age.fetch("Larry", "Larry isn't in this hash")
=> "Larry isn't in this hash"
- if key doesnt exist then can set a default value

## to_a
- to_a method returns an array version of your hash
- doesn't modify the array permanently
irb :009 > name_and_age.to_a
=> [["Bob", 42], ["Steve", 31], ["Joe", 19]]
irb :010 > name_and_age
=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}

## keys and values
- if you want to retrieve all the keys or values out of a hash
irb :0011 > name_and_age.keys
=> ["Bob", "Steve", "Joe"]
irb :0012 > name_and_age.values
=> [42, 31, 19]

# A note on Hash Order
- in oldest versions of ruby hashes would not maintain order, each time hash was run order was different
- now the order in which they're stored is order in which they will output
