# Takes a string as the first argument and an array of valid substrings as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
def substrings(string, valid_substrings)
  valid_substrings.reduce(Hash.new(0)) do |result, valid_substring|
    num_occurence = string.downcase.scan(valid_substring).length
    if (num_occurence > 0) then result[valid_substring] = num_occurence end
    result
  end
end