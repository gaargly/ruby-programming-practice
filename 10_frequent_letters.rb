# Write a method `frequent_letters` that takes in a string
# and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  hash = Hash.new(0)
  results = []

  string.each_char do |char|
    hash[char] += 1
  end

  hash.each do |k, v|
    if v > 2
      results << k
    end
  end

  return results
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
