class Say
  attr_reader :number
  UNDER_20 = {
    0 => 'zero',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11  => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
  }

  TENS = {
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
  }

  def initialize(number)
    @number = number
  end

  def in_english
    case number
    when 0..19
      UNDER_20[number]
    when 20..99
      double_digit_in_english
    else
    end
  end

  private

  def double_digit_in_english
    tens_digit = (number / 10)*10
    single_digit = number - tens_digit
    if number % 10 == 0
      TENS[tens_digit]
    else
      "#{TENS[tens_digit]}-#{UNDER_20[single_digit]}"
    end
  end
end
