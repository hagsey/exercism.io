class Pangram
  def self.is_pangram?(str)
    alphabet = ('a'..'z').to_a
    alphabet.all? { |n| str.downcase.count(n) >= 1 }
  end
end
