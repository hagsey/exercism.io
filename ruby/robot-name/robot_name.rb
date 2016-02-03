class Robot
  attr_accessor :name

  LETTERS = ('A'..'Z').to_a
  NUMBERS = ('1'..'9').to_a

  def initialize
    @name = ""
    2.times { |i| self.name += LETTERS.sample }
    3.times { |i| self.name += NUMBERS.sample }
  end

  def reset
    original_name = name
    while original_name == name
      initialize
    end
  end
end