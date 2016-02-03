class Raindrops
  VERSION = 1

  def self.convert(number)
    translation = ""
    translation += 'Pling' if number % 3 == 0
    translation += 'Plang' if number % 5 == 0
    translation += 'Plong' if number % 7 == 0
    return number.to_s if translation.empty?
    translation
  end
end



