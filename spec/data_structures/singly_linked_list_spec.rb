require 'spec_helper'
require 'data_structures/singly_linked_list.rb'

describe 'LinkedList' do
  let(:list) { LinkedList.new('A') }

  describe '#initialize' do
    it 'creates a new instance of the LinkedList class' do
      LinkedList.new(1).must_be_instance_of LinkedList
    end

    it 'has a node as head attribute' do
      list = LinkedList.new(1)
      list.head.must_equal Node.new(1)
    end
  end

  describe '#insert' do
    it 'inserts a node at the head of the list' do
      list.insert('B')
      list.head.val.must_equal 'B'
    end

    it 'links the new node to the previous node' do
      first_head = list.head
      list.insert('B')
      list.head.nxt.must_equal first_head
    end

    it 'makes the inserted node the head if there is no head' do
      list = LinkedList.new
      list.insert('B')
      list.head.val.must_equal 'B'
    end
  end

  describe '#size' do
    it 'returns the length of the linked list' do
      list.insert('B')
      list.insert('C')

      list.size.must_equal 3
    end

    it 'retuns 1 for an linked list with 1 node' do
      list = LinkedList.new
      list.size.must_equal 1
    end
  end

  describe '#search(val)' do
    it 'returns the node with same value as the argument' do
      list.insert('B')
      list.search('A').must_equal list.head.nxt
    end

    it 'returns the head if the searched value is the same as the the head' do
      list.search('A').must_equal list.head
    end

    it 'returns nil if the searched value does not exist' do
      list.search('C').must_equal nil
    end
  end

  describe '#remove(val)' do
    it 'removes the node with the same value as the argument from the list' do
      list.insert('B')
      list.insert('C')
      list.remove('B')
      list.size.must_equal 2
    end

    it 'returns nil if node does not exist' do
      list.remove('C').must_equal nil
    end
  end

  describe '#to_s' do
    it 'returns a string of all the node vaulues in the list' do
      list.insert('B')
      list.insert('C')
      list.to_s.must_equal 'C, B, A'
    end
  end
end










