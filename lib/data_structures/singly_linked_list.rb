require 'data_structures/node.rb'

class LinkedList
  attr_accessor :head

  def initialize(start_value = nil)
    @head = Node.new(start_value)
  end

  def insert(value)
    @head = Node.new(value) unless @head

    new_node = Node.new(value, @head)
    @head = new_node
  end

  def size
    count = 1
    current_node = head
    while current_node.nxt
      current_node = current_node.nxt
      count += 1
    end
    count
  end

  def search(val)
    return @head if @head.val == val
    current_node = @head

    until current_node.nil? || current_node.val == val
      current_node = current_node.nxt
    end
    current_node
  end

  def remove(val)
    current_node = @head
    until current_node.nxt.nil? || current_node.nxt.val == val
      current_node = current_node.nxt
    end
    return nil if current_node.nxt.nil?
    node_to_delete = current_node.nxt
    current_node.nxt = node_to_delete.nxt
  end

  def to_s
    current_node = @head
    nodes = []

    until current_node.nil?
      nodes << current_node.val
      current_node = current_node.nxt
    end
    nodes.join(', ')
  end
end
