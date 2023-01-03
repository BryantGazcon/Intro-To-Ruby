# What method could you use to find out if a Hash contains a 
#specific value in it? Write a program that verifies that the value 
#is within the hash.

movie_rating = {Inception: 10, Titanic: 9, Avatar: 8}

if movie_rating.value?(5)
  puts "we got it"
else
  puts "we dont got it"
end
