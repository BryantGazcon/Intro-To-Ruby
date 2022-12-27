#Write a program that uses a hash to store a list of movie 
#titles with the year they came out
Movies = {:Titanic => 1997, :ANewHope => 1978, :Inception =>2010, :Tenet => 2020 }

Movies.each {|movie, year| puts year }