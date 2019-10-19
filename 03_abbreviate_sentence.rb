# Write a method `abbreviate_sentence` that takes in a sentence string
# and returns a new sentence where every word longer
# than 4 characters has all of its vowels removed.

def abbreviate_sentence(sent)
  arr = sent.split(" ")
  results = []
  arr.each do |el|
    if el.length > 4
      results << el.delete('aeiou')
    else
      results << el
    end
  end
  return results.join(" ")
end


puts abbreviate_sentence("Hi there excellent cowboy")
