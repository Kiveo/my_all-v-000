require 'pry'

# def my_all?(collection)
#   i = 0
#   block_return_values = []
#   while i < collection.length
#     block_return_values << yield(collection[i])
#     i = i + 1
#   end
#
#   if block_return_values.include?(false)
#     false
#   else
#     true
#   end
# end

def my_all(array)
  if block_given?
    i = 0
    storage_array = []
    while i < array.length
      if yield(array[i]) == "false"
        return false
      end
      i += 1
    end
  else
    "Did not provide block"
  end

end
