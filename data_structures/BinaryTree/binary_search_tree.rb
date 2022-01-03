require_relative 'binary_tree.rb'
require_relative 'node.rb'

class BinarySearchTree < BinaryTree
  def insert value
    parent_node = nil
    current_node = @root

    # Gerencio o nó pai que vai ser o antecessor do valor a ser inserido na árvore
    while current_node do
      parent_node = current_node

      if value < current_node.data
        current_node = current_node.left
      else
        current_node = current_node.right
      end
    end

    # Setando o nó a depender do valor na subárvore correta do pai
    if parent_node.nil?
      @root = Node.new(value)
    elsif value < parent_node.data
      parent_node.left = Node.new(value)
    else
      parent_node.right = Node.new(value)
    end
  end

  def search_node value
    return search(value, @root)
  end

  private

  def search(value, node)
    return node if node.nil?
    return BinarySearchTree.new(node) if node.data == value

    if value < node.data
      self.search(value, node.left)
    else
      self.search(value, node.right)
    end
  end
end
