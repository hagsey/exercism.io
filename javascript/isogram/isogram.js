
var Isogram = function(word) {
  this.word = word;
};

Isogram.prototype.isIsogram = function() {
  var scrubbed_word = this.word.toLowerCase().replace(/-|\s+/g, '');

  for (var i in scrubbed_word) {
    var idx = Number(i) + 1;
    if (scrubbed_word.slice(idx).includes(scrubbed_word[i])) { return false; }
  }

  return true;
};

module.exports = Isogram;
