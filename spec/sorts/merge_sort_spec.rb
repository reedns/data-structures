require 'spec_helper'
require 'merge_sort.rb'

describe 'MergeSort' do
 describe '#merge_sort' do
    before do
      @sorter = MergeSort.new
    end
    it 'returns an array of two elements in ascending order' do
      arr = [2, 1]
      @sorter.merge_sort(arr).must_equal [1, 2]
    end

    it 'returns an array of elements in ascending order' do
      arr = [3, 2, 4, 1]
      @sorter.merge_sort(arr).must_equal [1, 2, 3, 4]
    end
  end
end
