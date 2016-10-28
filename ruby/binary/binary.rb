class Binary
  VERSION = 1

  def initialize(binary)
    raise ArgumentError if /[^10]/.match(binary)
    @binary = binary.chars.reverse!.map(&:to_i)
  end

  def to_decimal
    @binary.each_with_index.reduce(0) do |result, (num, idx)|
      result + num * 2**idx
    end
  end
end
