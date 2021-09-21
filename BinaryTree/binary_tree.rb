require_relative 'node.rb'

class BinaryTree
  def initialize(data=nil)
    @root = data.nil? ? data : Node.new(data)
  end

  def simetric_traversal(node=nil)
    node = @root if node.nil?

    if node.left
      puts("(")
      simetric_traversal(node.left)
    end

    puts node

    if node.right
      simetric_traversal(node.right)
      puts(")")
    end
  end
end
