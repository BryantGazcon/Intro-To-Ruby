# Why does following code give us an error when we run it?
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

Error:
Exercise_5.rb:1:in `execute': wrong number of arguments (given 0, expected 1) (ArgumentError)
        from Exercise_5.rb:5:in `<main>'
bryantgazcon@Bryants-iMac More_Stuff % 


# The code gives us an error of wrong number of arguments because the argument
is missing the ampersand sign &.