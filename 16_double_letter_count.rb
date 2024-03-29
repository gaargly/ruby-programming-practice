# Write a method that takes in a string
# and returns the number of times that the same letter repeats twice in a row.

def double_letter_count(string)
  counter = 0
  string.each_char.with_index do |ch, idx|
    if ch == string[idx+1]
      counter += 1
    end
  end

  return counter

end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1
