class Arrays
  def accumulate
    each_with_object([]) { |item, result| result << yield(item) }
  end
end
