require 'data_structures/singly_linked_list.rb'
require 'data_structures/node.rb'

class Stack < LinkedList
  def push(value)
    insert(value)
  end

  def pop
    fail 'Stack is empty' if @head == nil

    if @head.nxt
      current_node = @head
      until current_node.nxt.nxt == nil
        current_node = current_node.nxt
      end
      popped_node = current_node.nxt
      current_node.nxt = nil
    else
      popped_node = @head
      @head = nil
    end

    popped_node
  end
end
