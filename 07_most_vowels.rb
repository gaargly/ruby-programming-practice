# Write a method `most_vowels` that takes in a sentence string
# and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  arr = sentence.split(" ")
  hash = Hash.new(0)
  arr.each do |ele|
    if ele.include?('a')
      hash[ele] += 1
    end
    if ele.include?('e')
      hash[ele] += 1
    end
    if ele.include?('i')
      hash[ele] += 1
    end
    if ele.include?('o')
      hash[ele] += 1
    end
    if ele.include?('u')
      hash[ele] += 1
    end
  end
  return hash.sort_by {|k, v| v}[-1][0]
end


print most_vowels("what a wonderful life") #=> "wonderful"
