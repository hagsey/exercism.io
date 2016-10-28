const alphabet = "abcdefghijklmnopqrstuvwxyz".split('');

var Pangram = function(sentence) {
  this.sentence = sentence.toLowerCase();
};

Pangram.prototype.isPangram = function() {
  for (var i = 0; i < 26; i++) {
    if (!this.sentence.includes(alphabet[i])) { return false; }
  }

  return true;
}

module.exports = Pangram;