require 'spec_helper'
require 'data_structures/doubly_linked_list.rb'

describe 'DoublyLinkedList' do
  let(:list) { DoublyLinkedList.new }

  describe '#insert' do
    it 'inserts a new node the head of the list if the head is nil' do
      list = DoublyLinkedList.new
      list.insert('A')
      list.head.val.must_equal 'A'
    end

    it 'inserts a new node at the head of the list if there are other nodes' do
      list.insert('A')
      list.head.val.must_equal 'A'
    end

    it 'links the old head to the new head' do
      list.insert('B')
      list.insert('A')
      list.head.nxt.prev.val.must_equal 'A'
    end

    it 'links the nodes correctly' do
      list.insert('A')
      list.insert('B')
      list.insert('C')
      list.to_s.must_equal 'C, B, A'
    end
  end

  describe '#remove(val)' do
    it 'removes the node with the same value as the argument from the list' do
      list.insert('A')
      list.insert('B')
      list.insert('C')
      list.remove('B')
      list.to_s.must_equal 'C, A'
    end

    it 'returns nil if node does not exist' do
      list.insert('A')
      list.remove('C').must_equal nil
    end
  end

  describe '#remove_duplicates' do
    it 'deletes all the duplicates from the list' do
      dupe_list = DoublyLinkedList.new
      nodes = []
      200.times { nodes << Node.new(rand(1..100), nil, nil) }
      nodes.each { |n|  dupe_list.insert(n) }

      dupe_list.remove_duplicates.to_s
    end
  end
end
