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

  def inorder_traversal(node=nil)
    node = @root if node.nil?

    self.inorder_traversal(node.left) if node.left
    puts node.data
    self.inorder_traversal(node.right) if node.right
  end

  def postorder_traversal(node=nil)
    node = @root if node.nil?

    self.postorder_traversal(node.left) if node.left
    self.postorder_traversal(node.right) if node.right
    puts node.data
  end

  def height_tree
    result = height
    puts "Height: #{result}"
  end

  private

  def height(node=nil)
    node = @root if node.nil?
    hleft = 0
    hright = 0

    hleft = self.height(node.left) if node.left
    hright = self.height(node.right) if node.right
    
    hright > hleft ? hright + 1 : hleft + 1
  end
end
