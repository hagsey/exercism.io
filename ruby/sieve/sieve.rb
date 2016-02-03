class Sieve
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def is_prime?(num)
    (2..num-1).all? { |digit| num % digit != 0 }
  end

  def primes
    (2..number).select { |n| is_prime?(n) }
  end
end
