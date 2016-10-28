class Triangle
  attr_reader :num_of_rows

  def initialize(num_of_rows)
    @num_of_rows = num_of_rows
  end

  def rows
    all_rows = [[1]]
    (num_of_rows-1).times do
      find_next_row(all_rows)
    end
    all_rows
  end

  private

  def find_next_row(rows, new_row=[1])
    rows.last.each_with_index do |num, index|
        new_num = num + rows.last[index + 1].to_i
        new_row << new_num
      end
    rows << new_row
  end
end
