# Write a method `yell_sentence` that takes in a sentence string
# and returns a new sentence where every word is yelled.
# See the examples. Use map to solve this.

def yell_sentence(sent)
  arr = sent.split(" ")
  new_arr = arr.map {|ele| ele.upcase + "!"}
  return new_arr.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
