class Grains
  def self.square(num)
    @@board = {}
    grains = 1
    square = 1
    until @@board.has_key?(64) do
        @@board[square] = grains
        square += 1
        grains *= 2
    end
    @@board[num]
  end

  def self.total
    @@board.values.reduce(:+)
  end
end