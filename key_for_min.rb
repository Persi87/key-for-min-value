# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'

def key_for_min_value(name_hash)
    lowest_value = nil  # default value is given to start the comparison
    lowest_key = nil
        name_hash.each do |key, value|
            if lowest_value == nil || value < lowest_value  #first iteration, lowest_value & lowest_key are nil, therefore...
                lowest_value = value    #...after the 1st iteration, lowest_value & lowest_key will == the first value & key...
                lowest_key = key    #...that are in the hash... on the next iteration it will check if value < lowest_value...
            end         #... and reassign lowest_value if it's true or run the next iteration and repeat the comparison. 
        end
    lowest_key
end