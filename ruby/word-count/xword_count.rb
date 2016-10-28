class Phrase
  VERSION = 1
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\w+\'\w+|\w+/)
  end

  def word_count
    phrase.each_with_object({}) do |word, hash|
      hash[word] = phrase.count(word)
    end
  end
end
