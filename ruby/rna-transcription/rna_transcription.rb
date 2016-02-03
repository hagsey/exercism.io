class Complement
  VERSION = 3
  CONVERSION = {
      'G'=>'C',
      'C'=>'G',
      'T'=>'A',
      'A'=>'U'
  }

  def self.of_dna(dna_strand)
    rna_strand = dna_strand.chars.map do |letter|
      raise ArgumentError unless CONVERSION.keys.include?(letter)
      CONVERSION[letter]
    end
    rna_strand.join
  end
end