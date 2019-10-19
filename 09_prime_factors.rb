# Write a method `prime_factors` that takes in a number and returns an array containing all of the prime factors of the given number.

def prime?(p)
  if p < 2
    return false
  end

  (2...p).each do |i|
    if p % i == 0
      return false
    end
  end
end


def prime_factors(num)
  prime_factors = []

  (1...num).each do |x|
    if num % x == 0 && prime?(x)
      prime_factors << x
    end
  end

  return prime_factors

end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
