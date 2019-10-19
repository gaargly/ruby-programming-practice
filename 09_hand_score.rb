# Write a method `hand_score` that takes in a string representing a hand of cards
# and returns its total score.
# You can assume the letters in the string are only A, K, Q, J.
# A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point.
# The letters of the input string not necessarily uppercase.

def hand_score(hand)
  counter = 0
  hand.each_char do |char|
    if char == "A" || char == "a"
      counter += 4
    elsif char == "K" || char == "k"
      counter += 3
    elsif char == "Q" || char == "q"
      counter += 2
    elsif char == "J" || char == "j"
      counter += 1
    end
  end
  return counter
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9
