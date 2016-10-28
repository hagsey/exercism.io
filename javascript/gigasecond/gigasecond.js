function Gigasecond(dateTime){
  this.givenDateTime = dateTime;
}

Gigasecond.prototype.date = function(){
  return new Date(this.givenDateTime.getTime() + 1e12);
};

module.exports = Gigasecond;