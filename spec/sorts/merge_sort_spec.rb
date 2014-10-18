require 'spec_helper'
require 'merge_sort.rb'

describe 'MergeSort' do
  describe '#merge_sort' do
    let(:sorter) { MergeSort.new }

    it 'returns an array of two elements in ascending order' do
      arr = [2, 1]
      sorter.merge_sort(arr).must_equal [1, 2]
    end

    it 'returns an array of elements in ascending order' do
      arr = [3, 2, 4, 1]
      sorter.merge_sort(arr).must_equal [1, 2, 3, 4]
    end

    it 'is benchmarked' do
      puts 'Merge sort:'
      arr = (1..1_000).to_a
      puts 'Best Case:'
      puts Benchmark.measure { sorter.merge_sort(arr) }

      arr = (1..1_000).to_a.reverse
      puts 'Worst Case:'
      puts Benchmark.measure { sorter.merge_sort(arr) }

      arr = (1..1_000).to_a.shuffle
      puts 'Random:'
      puts Benchmark.measure { sorter.merge_sort(arr) }
      puts '____________________________________________'
    end
  end
end
