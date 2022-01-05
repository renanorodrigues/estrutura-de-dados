require_relative '../binary_search_tree.rb'
require 'pry'

tree = BinarySearchTree.new
n1 = Node.new(9)
n2 = Node.new(6)
n3 = Node.new(15)
n4 = Node.new(12)
n5 = Node.new(22)
n6 = Node.new(78)

n1.left = n2
n1.right = n3
tree.root = n1
n3.left = n4
n3.right = n5
n5.right = n6

tree.insert 5

puts tree.postorder_traversal