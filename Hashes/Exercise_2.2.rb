#Look at Ruby's merge method. Notice that it has two versions. 
#What is the difference between merge and merge!? Write a program 
#that uses both and illustrate the differences.


movie_rating = {Inception: 10, Titanic: 9, Avatar: 8}

show_rating = {Lost: 7, Bones: 6, House: 5}


p movie_rating.merge!(show_rating)
# {:Inception=>10, :Titanic=>9, :Avatar=>8, :Lost=>7, :Bones=>6, :House=>5}
p movie_rating
# {:Inception=>10, :Titanic=>9, :Avatar=>8, :Lost=>7, :Bones=>6, :House=>5}
p show_rating
# {:Lost=>7, :Bones=>6, :House=>5}
=begin
this code illustrates s a destructive use of the methood merge! because 
after calling upon movie_rating (the method that was merged into)
it no longer displays it's original values but the original plus the merged