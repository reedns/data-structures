require 'spec_helper'
require 'data_structures/queue.rb'

describe 'DataQueue' do
  let(:queue) { DataQueue.new }

  describe '#initialize' do
    it 'is empty initially' do
      queue.head.must_equal nil
    end
  end

  describe '#enqueue(value)' do
    it 'adds the new node the end of the queue' do
      queue.enqueue('Cat')
      queue.enqueue('Dog')
      queue.enqueue('Pig')

      queue.to_s.must_equal 'Cat, Dog, Pig'
    end
  end

  describe '#dequeue(value)' do
    before do
      queue.enqueue('Cat')
      queue.enqueue('Dog')
      queue.enqueue('Pig')
    end

    it 'removes the first node from the queue' do
      queue.dequeue
      queue.to_s.must_equal 'Dog, Pig'
    end

    it 'returns the value of the removed node' do
      queue.dequeue.val.must_equal 'Cat'
    end

    it 'raises an exception if queue is empty' do
      3.times { queue.dequeue }
      proc { queue.dequeue }.must_raise RuntimeError
    end
  end

  describe '#size' do
    it 'returns the size of the queue' do
      queue.enqueue('Cat')
      queue.enqueue('Dog')
      queue.enqueue('Pig')

      queue.size.must_equal 3
    end
  end
end
