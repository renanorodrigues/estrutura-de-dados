require_relative 'node.rb'

class Queue
  def initialize
    @first = nil
    @last = nil
    @size = 0
  end

  def push(elem)
    node = Node.new(elem)

    if @last.nil?
      @last = node
    else
      @last.next = node
      @last = node
    end

    @first = node if @first.nil?

    @size += 1
  end

  def pop
  end

  def peek
    @top.data if @size > 0
  end

  def length
    @size
  end
end
