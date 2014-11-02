require 'spec_helper'
require 'data_structures/binary_tree.rb'

describe 'BinaryTree' do
  before do
    @tim = BinaryTree.new('Tim')
    phil = BinaryTree.new('Phil')
    jony = BinaryTree.new('Jony')
    katie = BinaryTree.new('Katie')
    dan = BinaryTree.new('Dan')
    craig = BinaryTree.new('Craig')
    eddie = BinaryTree.new('Eddie')
    peter = BinaryTree.new('Peter')
    andrea = BinaryTree.new('Andrea')

    @tim.left = jony
    @tim.right = phil
    jony.left = dan
    jony.right = katie
    katie.left = peter
    katie.right = andrea
    phil.left = craig
    phil.right = eddie
  end

  it 'does a pre-order traversal' do
    @tim.pre_order(@tim).must_equal %w(Tim Jony Dan K  atie Peter Andrea
                                       Phil Craig Eddie)
  end

  it 'does a in-order traversal' do
    @tim.in_order(@tim).must_equal %w(Dan Jony Peter Katie Andrea Tim Craig
                                      Phil Eddie)
  end

  it 'does a post-order traversal' do
    @tim.post_order(@tim).must_equal %w(Dan Peter Andrea Katie Jony Craig
                                        Eddie Phil Tim)
  end

end
