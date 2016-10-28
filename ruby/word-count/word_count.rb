class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.strip.scan(/\w+\'\w+|\w+/)
  end
  def word_count
    @phrase.each_with_object({}) do |word, count|
      count[word] = @phrase.count(word)
    end
  end
end