require 'data_structures/singly_linked_list.rb'
require 'data_structures/node.rb'

class DataQueue < LinkedList
  attr_reader :size

  def initialize
    @head = nil
    @size = 0
  end

  def enqueue(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current_node = @head
      current_node = current_node.nxt until current_node.nxt.nil?
      current_node.nxt = Node.new(value)
    end
    @size += 1
  end

  def dequeue
    fail 'Queue is empty' if @head.nil?
    @size -= 1
    old_head = @head
    new_head = old_head.nxt
    old_head.nxt = nil
    @head = new_head
    old_head
  end

  attr_reader :size
end
