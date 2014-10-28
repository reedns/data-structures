require 'spec_helper'
require 'data_structures/hash_table.rb'

describe 'HashTable' do
  let(:hash_table) { HashTable.new(1000) }

  describe '#initialize' do
    it 'has an array with the given size' do
      hash_table.size.must_equal 1000
    end
  end

  describe 'hash(key)' do
    it 'gives an appropriate hash for a given key' do
      hash_table.hash('ant').must_equal 323
    end

    it 'fails if key is not a string' do
      proc { hash_table.hash(1) }.must_raise RuntimeError
    end
  end

  describe 'set(key, val)' do
    it 'stores the key value pair' do
      hash_table.set('ant', 1).must_include ['ant', 1]
    end
  end

  describe '#get(key)' do
    it 'finds the value associated with the key' do
      hash_table.set('ant', 1)
      hash_table.get('ant').must_equal 1
    end
  end
end
