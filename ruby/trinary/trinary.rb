class Trinary
  attr_reader :trinary
  def initialize(trinary)
    if invalid?(trinary)
      @trinary = ['0']
    else
      @trinary = backwards_array_of_chars(trinary)
    end
  end

  def to_decimal
    trinary.each_with_index.inject(0) do |decimal, (digit, index)|
      decimal + digit.to_i * 3**index
    end
  end

  private

  def backwards_array_of_chars(string)
    string.chars.reverse
  end

  def invalid?(string)
    /[^\d]/.match(string)
  end
end
