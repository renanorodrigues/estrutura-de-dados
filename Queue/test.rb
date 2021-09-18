require_relative 'stack.rb'
require 'pry'

stack = Stack.new
stack.push 2
stack.push "Renan"
stack.push false
stack.pop
binding.pry
stack.peek