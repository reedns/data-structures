require 'spec_helper'
require 'radix_sort.rb'

describe 'RadixSort' do
  describe '#sort' do
    before { @radix = RadixSort.new }
    it 'returns an array of of single digit numbers in ascending order' do
      arr = [3, 1, 2]
      @radix.sort(arr).must_equal [1, 2, 3]
    end

    it 'returns an array of double digit numbers in ascending order' do
      arr = [31, 28, 43]
      @radix.sort(arr).must_equal [28, 31, 43]
    end
  end
end
