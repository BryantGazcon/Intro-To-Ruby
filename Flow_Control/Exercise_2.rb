#Write a method that takes a string as an argument. The method should return a new, 
#all-caps version of the string, only if the string is longer than 10 characters.

def capitalize (string)
  if string.length > 10
    puts string.upcase
  else 
    puts string
  end
end

capitalize("bryant is")