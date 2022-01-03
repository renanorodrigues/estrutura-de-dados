require_relative 'binary_tree.rb'
require_relative 'binary_search_tree.rb'
require 'pry'

tree = BinaryTree.new()
n1 = Node.new('A')
n2 = Node.new('B')
n3 = Node.new('C')
n4 = Node.new('D')
n5 = Node.new('E')
n6 = Node.new('F')

n5.right = n6
n3.left = n4
n3.right = n5
n1.left = n2
n1.right = n3
tree.root = n1

puts "Post Order Traversal:"
tree.postorder_traversal
tree.height_tree
puts "--------------------------------------------------"

tree2 = BinaryTree.new(19)
tree2.root.left = Node.new(2)
tree2.root.right = Node.new(11)

puts tree2.root.data
puts tree2.root.right.data
puts tree2.root.left.data

puts "--------------------------------------------------"
puts "Testing Binary Tree Search"
tree3 = BinarySearchTree.new(6)
n2 = Node.new(5)
n3 = Node.new(11)
n4 = Node.new(3)
n5 = Node.new(56)
n6 = Node.new(7)
n7 = Node.new(9)
n8 = Node.new(77)
n9 = Node.new(1)
n10 = Node.new(4)

n2.left = n4
n3.left = n6
n3.right = n5
n5.right = n8
n6.right = n7
n4.left = n9
n4.right = n10
tree3.root.left = n2
tree3.root.right = n3
puts "Inorder Traversal"
tree3.inorder_traversal
puts "Postorder Traversal"
tree3.postorder_traversal
puts "--------------------------------------------------"