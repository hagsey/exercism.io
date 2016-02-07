class Crypto
  def initialize(message)
    @message = message
  end

  def normalize_plaintext
    @message.gsub(/\W/, "").downcase
  end

  def size
    Math.sqrt(normalize_plaintext.size).ceil
  end

  def plaintext_segments
    normalize_plaintext.scan(/.{1,#{size}}/)
  end

  def ciphertext
    character_index = 0
    ciphered_characters = []
    while character_index <= size
      plaintext_segments.each do |segment|
        ciphered_characters << segment[character_index]
      end
      character_index += 1
    end
    ciphered_characters.join
  end

  def normalize_ciphertext
    ciphered_segments = []
    size.times do |index|
      ciphered_word = ""
      plaintext_segments.each do |segment|
        ciphered_word += segment[index] || ""
      end
      ciphered_segments << ciphered_word
    end
    ciphered_segments.join(" ")
  end
end
