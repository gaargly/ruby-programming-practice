# Write a method `is_valid_name` that takes in a string
# and returns a boolean indicating whether or not it is a valid name.

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)

  arr = str.split(" ")
  if arr.length >= 2
    arr.each do |ele|
      if ele[0] == ele[0].upcase and ele != ele.upcase
        return true
      else
        return false
      end
    end
  else
    return false
  end
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
puts is_valid_name("spider man")       # => false
