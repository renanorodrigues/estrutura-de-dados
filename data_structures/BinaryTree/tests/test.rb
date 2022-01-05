require_relative '../binary_search_tree.rb'
require 'pry'

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

tree3.root.left = n2
tree3.root.right = n3
n2.left = n4
n3.left = n6
n3.right = n5
n4.left = n9
n4.right = n10
n5.right = n8
n6.right = n7


result = tree3.search_node 56
binding.pry
puts "Search Node: #{result}"
puts "--------------------------------------------------"