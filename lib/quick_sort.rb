class QuickSort
  def sort(arr)
    pivot = arr[0]; lesser = []; greater = []; pivot_arr = []
    return arr if arr.size <= 1

    arr.each do |element|
      if element < pivot
        lesser << element
      elsif element > pivot
        greater << element
      else
        pivot_arr << element
      end
    end

    sort(lesser) + pivot_arr  + sort(greater)
  end
end
