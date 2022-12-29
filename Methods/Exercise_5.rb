#What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Hello")

#It will print nothing, because of the explicit return ruby will immediately
#exit from the method

#Edit the method definition so that it does print words on the screen
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Hello")

#what value does it return now?
  # since there is no explicit return value ruby will simply return 
  #the value of the last line in the method which in this case the
  #return value is nil.