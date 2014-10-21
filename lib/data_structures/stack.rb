require 'data_structures/singly_linked_list.rb'
require 'data_structures/node.rb'

class Stack < LinkedList
  def push(value)
    insert(value)
  end

  def pop
    current_node = @head
    until current_node.nxt.nxt == nil
      current_node = current_node.nxt
    end
    popped_node = current_node.nxt
    current_node.nxt = nil
    popped_node
  end
end
