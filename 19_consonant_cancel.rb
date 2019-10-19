# Write a method `consonant_cancel` that takes in a sentence
# and returns a new sentence where every word begins with its first vowel.

def consonant_cancel(sentence)
  result = []
  arr = sentence.split(" ")

  arr.each do |i|
    cancelled = []
    i.each_char.with_index do |ch, idx|
      if ch == 'a' || ch == "e" || ch == "i" || ch == "o" || ch == "u"
        cancelled << i[idx..-1]
        break
      end
    end
    result << cancelled.join
  end

  return result.join(" ")

end


puts consonant_cancel("rabbit") #=> "abbit"
puts "--------"
puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts "--------"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
