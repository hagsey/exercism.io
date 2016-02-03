
class Bob
  def hey(text)
    if say_nothing(text)
      'Fine. Be that way!'
    elsif yell(text)
      'Whoa, chill out!'
    elsif question(text)
      'Sure.'
    else
      'Whatever.'
    end
  end

  private

  def question(text)
    text[-1] == '?'
  end

  def yell(text)
    text.upcase == text && text.match(/[a-zA-Z]/)
  end

  def say_nothing(text)
    text.strip.empty?
  end
end
