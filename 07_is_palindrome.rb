# Write a method `is_palindrome(word)` that takes in a string word
# and returns the true if the word is a palindrome, false otherwise.
# A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word)
  i = word.length - 1
  rev = []
  while rev.length < word.length
    rev.push(word[i])
    i -= 1
  end
  rev = rev.join

  if word == rev
    return true
  else
    return false
  end
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false
