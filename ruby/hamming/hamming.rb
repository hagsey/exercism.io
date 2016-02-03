class Hamming
  VERSION = 1
  def self.compute(str1, str2)
    raise ArgumentError if str1.size != str2.size
    hamming_dist = 0
    str1.size.times { |i| hamming_dist += 1 if str1[i] != str2[i] }
    hamming_dist
  end
end