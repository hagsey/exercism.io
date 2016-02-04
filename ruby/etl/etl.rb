class ETL
  def self.transform(old)
    old.each_with_object({}) do |(number, letters), new|
      letters.each { |letter| new[letter.downcase] = number }
    end
  end
end
