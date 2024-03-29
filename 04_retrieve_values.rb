# Write a method `retrieve_values` that takes in two hashes and a key.
# The method should return an array containing the values from the two hashes that correspond with the given key.

def retrieve_values(hash1, hash2, key)
  result = []
  hash1.each do |k, v|
    if k == key
      result << v
    end
  end
  hash2.each do |k, v|
    if k == key
      result << v
    end
  end
  return result
end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts
