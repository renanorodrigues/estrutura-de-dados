require_relative 'queue.rb'
require 'pry'

queue = Queue.new
queue.push 2
queue.push "Renan"
queue.push false
queue.pop
binding.pry
queue.peek