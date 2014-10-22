require 'spec_helper'
require 'data_structures/stack.rb'

describe 'Stack' do
  let(:stack) { Stack.new('A') }

  describe '#initialize' do
    it 'has a node as the head attribute' do
      stack.head.must_be_instance_of Node
    end
  end

  describe '#push(value)' do
    it 'adds a data element to the top of the stack' do
      stack.push('B')
      stack.to_s.must_equal 'B, A'
    end

    it 'links the new data element with the previous one' do
      stack.push('B')
      stack.search('B').nxt.val.must_equal 'A'
    end
  end

  describe '#pop' do
    before do
      stack.push('B')
      stack.push('C')
    end

    it 'removes the data element from the top of the stack and returns it' do
      stack.pop
      stack.to_s.must_equal 'C, B'
    end

    it 'returns the removed node' do
      stack.pop.val.must_equal 'A'
    end

    it 'raises an error if the stack is empty' do
      3.times { stack.pop }

      proc{ stack.pop }.must_raise RuntimeError
    end
  end
end
