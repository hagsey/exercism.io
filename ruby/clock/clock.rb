class Clock
  def initialize(hour, min)
    @hour = hour
    @min = min
  end

  def self.at(hour, min=0)
    new(hour, min)
  end

  def to_s
    hours = total_minutes / 60
    minutes = total_minutes % 60

    "#{format(hours)}:#{format(minutes)}"
  end

  def + (min)
    @min += min
    self
  end

  def - (min)
    @min -= min
    self
  end

  def == (clock)
    self.total_minutes == clock.total_minutes
  end

  def total_minutes
    minutes = @hour*60 + @min
    if minutes > 1440
      minutes - 1440
    elsif minutes > 720
      minutes - 720
    elsif minutes < 0
      1440 + minutes
    else
      minutes
    end
  end

  def format(num)
    num < 10 ? "0#{num}" : num.to_s
  end
end
