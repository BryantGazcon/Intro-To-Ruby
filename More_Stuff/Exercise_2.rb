#What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# doesnt print anything block was not called Ex: block.call
# returns a proc object