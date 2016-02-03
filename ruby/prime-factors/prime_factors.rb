class PrimeFactors
  def self.for(number)
    divisor = 2
    prime_factors = []
      while divisor <= number
        while number % divisor == 0
          prime_factors << divisor
          number /= divisor
        end
        divisor += 1
      end
    prime_factors
  end
end
