# Using some of Ruby's built-in Hash methods, write a program that loops 
#through a hash and prints all of the keys. Then write a program that 
#does the same thing except printing the values. Finally, write a program 
#that prints both.

movie_rating = {Inception: 10, Titanic: 9, Avatar: 8}

movie_rating.keys.each {|k| puts k }

movie_rating.values.each{|v| puts v}

movie_rating.each{|k,v| puts "#{k} has a rating of #{v}/10!"}