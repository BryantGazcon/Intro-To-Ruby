puts "What is the keyword?"
input = gets.chomp.upcase
while input != "STOP" do
  puts " What is the keyword?"
  keyword = gets.chomp.upcase
  if keyword == "STOP"
    break
  else
    next
  end
end
