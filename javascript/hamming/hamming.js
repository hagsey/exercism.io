var Hamming = function() {};

Hamming.prototype.compute = function(a, b) {

  if (a.length !== b.length) { throw 'DNA strands must be of equal length.'};

  for (var i = 0, count = 0; i < a.length; i++ ) {
    if (a[i] !== b[i]) {
      ++count;
    }
  }
  return count;
}

module.exports = Hamming;