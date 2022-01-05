require_relative '../binary_tree.rb'
require 'pry'

# How works?
# I   - Visits the left node if exist
# II  - Prints the data
# III - Visits the right node if exist

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

# OUTPUT: BADCEF
tree.inorder_traversal