class Palindromes

  Palindrome = Struct.new(:value, :factors)

  def initialize(args)
    @max = args[:max_factor]
    @min = args[:min_factor] || 1
    @palindromes = {}
  end

  def generate
    (@min..@max).each do |first_factor|
      (first_factor..@max).each do |second_factor|
        product = first_factor * second_factor
        if palindrome?(product)
          @palindromes[product] ||= []
          @palindromes[product] << [first_factor, second_factor]
        end
      end
    end
  end

  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end

  def smallest
    value = @palindromes.keys.min
    Palindrome.new(value, @palindromes[value])
  end

  def largest
    value = @palindromes.keys.max
    Palindrome.new(value, @palindromes[value])
  end
end

