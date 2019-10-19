# Write a method `opposite_count` that takes in an array of unique numbers.
# The method should return the number of pairs of elements that sum to 0.

def opposite_count(nums)
  counter = 0
  nums.each_with_index do |num1, idx1|
    nums.each_with_index do |num2, idx2|
      if idx2 > idx1
        if num1 + num2 == 0
          counter += 1
        end
      end
    end
  end
  return counter
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1
puts opposite_count([ -1, 1, -2, 2, -3, 3, -4, 4, 5, -5, 0 ]) # => 5
