# Write a while loop that takes input from the user, 
#performs an action, and only stops when the user 
#types "STOP". Each loop can get info from the user.

input = gets.chomp

while input != "STOP" do
  puts "lets try that again, what is the magic keyword?"
  keyword = gets.chomp.upcase
  if keyword == "STOP"
    puts "okay, nice job"
    break
  end
end

