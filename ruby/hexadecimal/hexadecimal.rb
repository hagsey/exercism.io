class Hexadecimal
  HEX_TRANSLATOR = {
    '0' => 0,
    'a' => 10,
    'b' => 11,
    'c' => 12,
    'd' => 13,
    'e' => 14,
    'f' => 15,
  }

  def initialize(hex)
    @hex = hex
  end

  def array_of_nums
    @hex.chars.each_with_object([]) do |char, num_array|
      if char.to_i > 0
        num_array << char.to_i
      else
        num_array << HEX_TRANSLATOR.fetch(char)
      end
    end
  end

  def to_decimal
    return 0 if /[^0-9A-Fa-f]/.match(@hex)
    array_of_nums.reverse.each_with_index.inject(0) do |decimal, (num, index)|
      decimal + num*16**index
    end
  end
end
