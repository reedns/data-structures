require 'spec_helper'
require 'radix_sort.rb'

describe 'RadixSort' do
  describe '#sort' do
    let(:radix) { RadixSort.new }
    it 'returns an array of of single digit numbers in ascending order' do
      arr = [3, 1, 2]
      radix.sort(arr).must_equal [1, 2, 3]
    end

    it 'returns a sorted array of double digit numbers in ascending order' do
      arr = [31, 28, 43]
      radix.sort(arr).must_equal [28, 31, 43]
    end

    it 'returns a sorted array of n numbers in ascending order' do
      arr = (1..100).to_a.shuffle
      sorted_arr = (1..100).to_a
      radix.sort(arr).must_equal sorted_arr
    end

    it 'is benchmarked' do
      puts 'Radix sort:'
      arr = (1..1_000).to_a
      puts 'Best Case:'
      puts Benchmark.measure { radix.sort(arr) }

      arr = (1..1_000).to_a.reverse
      puts 'Worst Case:'
      puts Benchmark.measure { radix.sort(arr) }

      arr = (1..1_000).to_a.shuffle
      puts 'Random:'
      puts Benchmark.measure { radix.sort(arr) }
      puts '____________________________________________'
    end
  end
end
