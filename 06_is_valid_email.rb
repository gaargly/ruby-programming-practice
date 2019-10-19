# Write a method `is_valid_email` that takes in a string and returns a boolean indicating
# whether or not it is a valid email address.

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)

  arr = str.split("@")
  if arr.length == 2 && (arr[0] == arr[0].downcase && arr.count("0-9") == 0) && arr[1].include?('.')
    return true
  else
    return false
  end

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
