# Predict what the following `puts` lines with question marks will print out.
# Write down your predictions as comments.
# Check your work by running the code and comparing the output to your prediction.

num = 40
num + 5
puts "---1:"
puts num                   # 40

num += 2
puts "---2:"
puts num                   # 42

isEven = num % 2 == 0
puts "---3:"
puts isEven                # True

isNegative = num < 0
puts "---4:"
puts isNegative            # False

puts "---5:"
puts isEven || isNegative  # True

puts "---6:"
puts isEven && isNegative  # False

puts "---7:"
puts isEven && !isNegative # True
