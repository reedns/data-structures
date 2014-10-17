class Array
  def insertion_sort
    each_with_index do |ele, index|
      comparison_index = index - 1
      until ele >= self[comparison_index] || comparison_index == -1
        comparison_index -= 1
      end
      slice!(index)
      insert(comparison_index + 1, ele)
    end
  end
end
