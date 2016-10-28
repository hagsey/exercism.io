var Year = function(date) {
  this.date = date;
};

Year.prototype.isLeap = function() {
  var date = this.date;

    if (date % 4 === 0 || date % 400 === 0 ) {
      if (date % 100 === 0) {
        return false;
      }
      return true;
    }

  return false;

}

module.exports = Year;