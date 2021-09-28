require_relative 'node.rb'

class BinaryTree
  attr_accessor :root

  def initialize(data=nil, node=nil)
    if node
      @root = node
    elsif data
      @root = Node.new(data)
    else
      @root = nil
    end
  end

  def simetric_traversal(node=nil)
    node = @root if node.nil?

    self.simetric_traversal(node.left) if node.left
    puts node.data
    self.simetric_traversal(node.right) if node.right
  end
end
