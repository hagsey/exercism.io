var Words = function() {};

Words.prototype.count = function(phrase) {
  var words = phrase.toLowerCase().trim().split(/\s+/),
      count_obj = {};

  for (var i = 0; i < words.length; i++) {
    if (!count_obj.hasOwnProperty(words[i])) {
      count_obj[words[i]] = 1;
    } else {
      count_obj[words[i]]++;
    };
  }

  return count_obj;
}


module.exports = Words;