class School
  VERSION = 1
  
  attr_reader :roster

  def initialize
    @roster = {}
  end

  def add(name, grade)
    roster[grade] ? (@roster[grade] << name).sort! : @roster[grade] = [name]
  end

  def to_h
    roster.sort.to_h
  end

  def grade(number)
    roster[number] || []
  end
end
