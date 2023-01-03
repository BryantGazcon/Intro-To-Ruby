#Look at Ruby's merge method. Notice that it has two versions. 
#What is the difference between merge and merge!? Write a program 
#that uses both and illustrate the differences.

movie_rating = {Inception: 10, Titanic: 9, Avatar: 8}

show_rating = {Lost: 7, Bones: 6, House: 5}


p movie_rating.merge(show_rating)
#{:Inception=>10, :Titanic=>9, :Avatar=>8, :Lost=>7, :Bones=>6, :House=>5}
p movie_rating
#{:Inception=>10, :Titanic=>9, :Avatar=>8}
p show_rating
#{:Inception=>10, :Titanic=>9, :Avatar=>8}
=begin
this code illustrates the merge method that is not destructive because
after merging both the movie_rating and show_rating I am still able to return
the original hash value
=end 