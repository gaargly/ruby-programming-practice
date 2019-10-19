# Write a method `caesar_cipher` that takes in a string and a number.
# The method should return a new string where every character of the original is shifted `num` characters in the alphabet.

def caesar_cipher(str, num)
  arr = []
  result = []

  ("a".."z").each do |letter|
    arr << letter
  end

  str.each_char do |ch|
    arr.each_with_index do |ch2, idx2|
      if ch == ch2
        result << arr[(idx2+num) % 26]
      end
    end
  end

  return result.join
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
