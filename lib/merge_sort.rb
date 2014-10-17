class MergeSort
  def merge_sort(arr)
    return arr if arr.length <= 1

    split = arr.length / 2
    left_arr = arr[0, split]
    right_arr = arr[split..-1]

    left_arr = merge_sort(left_arr)
    right_arr = merge_sort(right_arr)
    merge(left_arr, right_arr)
  end

  def merge(left, right)
    return left unless right
    result = []
    until left.empty? || right.empty?
      if left.first <= right.first
        result << left.shift
      else
       result << right.shift
      end
    end
    result + left + right
  end
end
