class SumOfMultiples
  def initialize(*multiples)
    @multiples = *multiples
  end

  def to(limit)
    multiples(limit)
  end

  def self.to(limit)
    new(3, 5).to(limit)
  end

  private

  def multiples(limit)
    array = []
    @multiples.each do |multiple|
      array << (1..limit-1).select { |number| number % multiple == 0 }
    end
    array.flatten.uniq.reduce(:+) || 0
  end
end
