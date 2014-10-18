require 'spec_helper'
require 'quick_sort.rb'

describe 'QuickSort' do
  describe '#sort' do
    let(:sorter) { QuickSort.new }

    it 'returns an array of one elements' do
      arr = [1]
      sorter.sort(arr).must_equal [1]
    end

    it 'sorts an array of 2 elements in ascending order' do
      arr = [8, 3]
      sorter.sort(arr).must_equal [3, 8]
    end

    it 'sorts an array of any number of elements in ascending order' do
      arr = (1..100).to_a.shuffle
      sorter.sort(arr).must_equal (1..100).to_a
    end

    it 'is benchmarked' do
      puts 'Quick sort:'
      arr = (1..1_000).to_a
      puts 'Best Case:'
      puts Benchmark.measure { sorter.sort(arr) }

      arr = (1..1_000).to_a.reverse
      puts 'Worst Case:'
      puts Benchmark.measure { sorter.sort(arr) }

      arr = (1..1_000).to_a.shuffle
      puts 'Random:'
      puts Benchmark.measure { sorter.sort(arr) }
      puts '____________________________________________'
    end
  end
end
