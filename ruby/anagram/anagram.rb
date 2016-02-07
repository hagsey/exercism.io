# class Anagram
#   def initialize(word)
#     @target_word = word
#   end
#
#   def match(words)
#     words.select do |word|
#       reformatted(word) == reformatted(@target_word) &&
#         is_a_real_anagram?(word)
#     end
#   end
#
#   private
#
#   def is_a_real_anagram?(word)
#     word.downcase != @target_word.downcase
#   end
#
#   def reformatted(word)
#     word.downcase.chars.sort.join
#   end
# end

class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def sorted
    @word.chars.sort
  end

  def match(strings)
    strings.select do |string|
      anagram?(string)
    end
  end

  def anagram?(string)
    formatted_word(string) == formatted_word(@word) &&
      string.downcase != @word
  end

  def formatted_word(word)
    word.downcase.chars.sort
  end
end
