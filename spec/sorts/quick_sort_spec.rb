require 'spec_helper'
require 'quick_sort.rb'

describe 'QuickSort' do
  describe '#sort' do
    before { @sorter = QuickSort.new }

    it 'returns an array of one elements' do
      arr = [1]
      @sorter.sort(arr).must_equal [1]
    end

    it 'sorts an array of 2 elements in ascending order' do
      arr = [8, 3]
      # require 'pry'; binding.pry
      @sorter.sort(arr).must_equal [3, 8]
    end

    it 'sorts an array of 3 elements in ascending order' do
      arr = [8, 3, 5]

      @sorter.sort(arr).must_equal [3, 5, 8]
    end

    it 'sorts an array of any number of elements in ascending order' do
      arr = (1..100).to_a.shuffle

      @sorter.sort(arr).must_equal (1..100).to_a
    end
  end
end
