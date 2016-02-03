class Prime
  def self.nth(number)
    raise ArgumentError if number < 1
    primes = []
    counter = 2
    until primes.size == number
      primes << counter if prime?(counter)
        counter += 1
    end
    primes.last
  end

  def self.prime?(num)
    (2..num - 1).all? { |i| num % i != 0 }
  end
end  
