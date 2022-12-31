x = gets.chomp.to_i

while x >= 0 
  puts x
  x = x - 1
end

# can refactor x = x-1 to x -= 1