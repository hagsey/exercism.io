# class Complement
#   VERSION = 3
#   CONVERSION = {
#       'G'=>'C',
#       'C'=>'G',
#       'T'=>'A',
#       'A'=>'U'
#   }

#   def self.of_dna(dna_strand)
#     rna_strand = dna_strand.chars.map do |letter|
#       raise ArgumentError unless CONVERSION.keys.include?(letter)
#       CONVERSION[letter]
#     end
#     rna_strand.join
#   end
# end


class Complement
  VERSION = 3
  KEY = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna_strand)
    raise ArgumentError if dna_strand.match(/[^GCTA]/)
    dna_strand.split('').map { |dna_nuc| dna_nuc = KEY[dna_nuc] }.join
  end
end
