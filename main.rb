dummy_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words = '', dictionary = [])
  result = Hash.new(0)

  formatted_words = words.split(' ').map { |item| item.downcase}

  formatted_words.each do |word|
    dictionary.each do |item|
      result[item.downcase] += 1 if word.include?(item.downcase)
    end
  end

  return result
end

pp substrings("Howdy partner, sit down! How's it going?", dummy_dictionary)