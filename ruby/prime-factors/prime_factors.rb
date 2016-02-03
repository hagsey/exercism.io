# class PrimeFactors
#   def self.for(number)
#     divisor = 2
#     prime_factors = []
#       while divisor <= number
#         while number % divisor == 0
#           prime_factors << divisor
#           number /= divisor
#         end
#         divisor += 1
#       end
#     prime_factors
#   end
# end

class PrimeFactors

  def self.for(number)
    return [] if number == 1
    factor = (2..number).find{|n| number % n == 0}
    [factor] + self.for(number / factor)
  end

end
