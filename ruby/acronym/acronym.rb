class Acronym
  def self.abbreviate(phrase)
    phrase.upcase.scan(/\w+/).each_with_object([]) do |word, acro|
      acro << word[0]
    end.join
  end
end
