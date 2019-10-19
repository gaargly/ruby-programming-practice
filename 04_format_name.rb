# Write a method `format_name` that takes in a name string and returns the name properly capitalized.

def format_name(str)
  name = str.downcase.split(" ")
  name.each do |el|
    el[0] = el[0].upcase
  end
  return name.join(" ")

end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
