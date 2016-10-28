var DnaTranscriber = function() {
  this.key = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
  }
};

DnaTranscriber.prototype.toRna = function(dna_strand) {
  var rna = '',
      self = this;

  dna_strand.split('').forEach(function(letter) {
   for (dna_nuc in self.key) {
     if (dna_nuc === letter) { rna += self.key[dna_nuc] };
   }
  });

  return rna;
};

module.exports = DnaTranscriber;