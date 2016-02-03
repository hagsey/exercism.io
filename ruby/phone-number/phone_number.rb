class PhoneNumber
  attr_reader :phone_number
  INVALID_NUMBER = '0000000000'

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    if has_letters?
      INVALID_NUMBER
    elsif scrubbed_number.size == 10
      scrubbed_number
    elsif scrubbed_number.size == 11 && scrubbed_number.start_with?('1')
      scrubbed_number[1, 11]
    else
      INVALID_NUMBER
    end
  end

  def area_code
    number[0, 3]
  end

  def to_s
    a, b, c = area_code, number[3, 3], number[6, 4]
    "(#{a}) #{b}-#{c}"
  end

  private

  def has_letters?
    /[a-zA-Z]/.match(phone_number)
  end

  def scrubbed_number
    phone_number.scan(/\d/).join
  end
end
