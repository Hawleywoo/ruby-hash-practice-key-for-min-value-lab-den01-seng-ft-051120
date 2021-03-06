# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'
def key_for_min_value(name_hash)
    # name_hash.key(name_hash.values.min)
    lowest_value = 0
    lowest_key = ""
    name_hash.select do |key, value|
        if lowest_value == 0
            lowest_value = value
        end
        if value <= lowest_value
            lowest_key = key
            lowest_value = value
        end
    end
    if name_hash == {}
        lowest_key = nil
    end
    lowest_key
end