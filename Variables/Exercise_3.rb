#add another section onto name.rb that prints the name of the user 10 times. 
#You must do this without explicitly writing the puts method 10 times in a row. 

puts "What is your name?"
name = gets.chomp
puts "Greetings, #{name}!"

10.times do
  puts name
end