class BinaryTree
  attr_accessor :val, :left, :right

  def initialize(val, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def pre_order(tree, results = [])
    return results if tree.nil?
    results << tree.val
    pre_order(tree.left, results)
    pre_order(tree.right, results)
  end

  def in_order(tree, results = [])
    return results if tree.nil?
    in_order(tree.left, results)
    results << tree.val
    in_order(tree.right, results)
  end

  def post_order(tree, results = [])
    return results if tree.nil?
    post_order(tree.left, results)
    post_order(tree.right, results)
    results << tree.val
  end
end
