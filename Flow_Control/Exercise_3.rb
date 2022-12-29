#Write a program that takes a number from the user between 0 and 100 and 
#reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Pick a number between 0 - 100 "
num = gets.chomp.to_i


if (num <= 50) && (num >= 0)
  puts "your number is between 50 and 0"
elsif (num >= 51 ) && (num <= 100) 
  puts "your number is between 51 and 100"
elsif num < 0
  puts "That number is not between 0 - 100"
else
  puts "your number is above 100"
end


