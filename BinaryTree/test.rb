require_relative 'binary_tree.rb'
require 'pry'

tree = BinaryTree.new()
n1 = Node.new('A')
n2 = Node.new('B')
n3 = Node.new('C')
n4 = Node.new('D')
n5 = Node.new('E')

n3.left = n4
n3.right = n5
n1.left = n2
n1.right = n3
tree.root = n1

# tree.simetric_traversal
tree.height_tree
puts "--------------------------------------------------"

tree2 = BinaryTree.new(19)
tree2.root.left = Node.new(2)
tree2.root.right = Node.new(11)

puts tree2.root.data
puts tree2.root.right.data
puts tree2.root.left.data