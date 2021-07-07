# require 'pry'

# def hello(array)
#   i = 0
#   while i < array.length
#     binding.pry 
#     # Looking at return value of first iteration at this point-- debugger 
#     yield(array[i])
#     i += 1
#   end
# end

# binding.pry 
# received nil... If we want our method to return something else, we have to tell it to do so. We want a new array not just the puts items listed 


# using collect 

def hello(array)
  i = 0
  collection = [] 
  # collection set to an empty array 
  while i < array.length
    collection << yield array [i]
    # pushing the return value of yielded array TO collection 
    i += 1
  end
  collection 
  # now we want to return the new array >> collection 
end