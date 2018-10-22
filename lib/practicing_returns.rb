require 'pry'

def hello(array)
  i = 0
  greetings []
  while i < array.length
    binding.pry
    greetings << yield(array[i])
    i += 1
  end
  collection 
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
