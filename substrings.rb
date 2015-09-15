def substrings(text, dictionary)
  listing = Hash.new(0)
  text_words = text.split
  text_words.each do |text_word|
    dictionary.each do |word|
      listing[word] += 1 if (text_word.include?(word))
    end
  end
  return listing
end

dictionary = %w(below down go going horn how howdy it i low own part partner sit)

p substrings("below low is this how party hornbill downtown", dictionary)