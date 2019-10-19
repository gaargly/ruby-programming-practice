# Write a method `map_by_key` that takes in an array of hashes and a key string.
# The method should returns a new array containing the values from each hash for the given key.

def map_by_key(arr, key)
  new_arr = []
  arr.each do |ele|
    ele.each do |k, v|
      if k == key
        new_arr << v
      end
    end
  end
  return new_arr
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts
