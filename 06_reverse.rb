# Write a method `reverse(word)` that takes in a string word
# and returns the word with its letters in reverse order.

def reverse(word)
  i = word.length - 1
  str = []
  while str.length < word.length
    str.push(word[i])
    i -= 1
  end
  return str.join
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"
