# Write a method `pig_latin_word` that takes in a word string and translates the word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  arr = []
  if word[0] == 'a' or word[0] == 'e' or word[0] == 'i' or word[0] == 'o' or word[0] == 'u'
    return word + 'yay'
  else
    word.each_char.with_index do |char, idx|
      if (char == "a" || char == "e" || char == "i" || char == "o" || char == "u")
        arr << idx
      end
    end
    index_of_first_vowel = arr[0]
    x = word[0...index_of_first_vowel]
    word[word.length] = x
    word[0...index_of_first_vowel] = ''
    word = word + "ay"
    return word
  end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
puts pig_latin_word("tesla")   # => "eslatay"
