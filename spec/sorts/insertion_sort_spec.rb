require 'spec_helper'
require 'insertion_sort.rb'

describe 'Array' do
  describe '#insertion_sort' do
    it 'returns an array of two elements in ascending order' do
      arr = [2, 1]
      arr.insertion_sort.must_equal [1, 2]
    end

    it 'returns an array of three elements in ascending order' do
      arr = [3, 1, 2]
      arr.insertion_sort.must_equal [1, 2, 3]
    end

    it 'returns an array of any number of elements in ascending order' do
      arr = (1..100).to_a.shuffle
      arr.insertion_sort.must_equal (1..100).to_a
    end

    it 'is benchmarked' do
      puts 'Insertion sort:'
      arr = (1..1_000).to_a
      puts 'Best Case:'
      puts Benchmark.measure { arr.insertion_sort }

      arr = (1..1_000).to_a.reverse
      puts 'Worst Case:'
      puts Benchmark.measure { arr.insertion_sort }

      arr = (1..1_000).to_a.shuffle
      puts 'Random:'
      puts Benchmark.measure { arr.insertion_sort }
      puts '____________________________________________'
    end
  end
end
