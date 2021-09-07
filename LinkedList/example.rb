require_relative 'linked_list.rb'
require 'pry'

list = LinkedList.new(7)
list.push(2)
list.push(3)
list.push(5)

puts list
puts list.length
puts list.index(3)
puts list.index(8)