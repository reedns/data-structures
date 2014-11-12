require 'data_structures/singly_linked_list.rb'

Node = Struct.new(:val, :nxt, :prev)

class DoublyLinkedList < LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def insert(value)
    return @head = Node.new(value, nil, nil) if @head.nil?
    old_head = @head
    @head = Node.new(value, old_head, nil)
    old_head.prev = @head
    @tail = old_head if old_head.nxt.nil?
    @size += 1
  end

  def remove(value)
    node_to_delete = search(value)
    return nil if node_to_delete.nil?
    node_to_delete.prev.nxt = node_to_delete.nxt unless node_to_delete == @head
    node_to_delete.nxt.prev = node_to_delete.prev unless node_to_delete == @tail
    @size -= 1
  end

  def remove_duplicates
    uniq_eles = []
    current_node = @head

    while current_node
      uniq_eles << current_node.val unless uniq_eles.include?(current_node.val)
      current_node = current_node.nxt
    end
    uniq_eles
  end
end
