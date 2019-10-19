# Write a method `all_else_equal` that takes in an array of numbers.
# The method should return the element of the array that is equal to half of the sum of all elements of the array.
# If there is no such element, the method should return nil.

def all_else_equal(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end

  sum_div_2 = sum / 2

  arr.each do |x|
    if x == sum_div_2
      return x
    end
  end
  return false

end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10
p all_else_equal([6, 3, 5, -9, 1]) #=> 3
p all_else_equal([1, 2, 3, 4])     #=> false
