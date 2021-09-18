require_relative 'node.rb'

class Stack
  attr_writer :size, :top

  def initialize
    @top = nil
    @size = 0
  end

  def push(elem)
    node = Node.new(elem)
    node.next = @top
    @top = node

    @size += 1
  end

  def pop
    if @size > 0
      popTop = @top
      @top = @top.next
      @size -= 1
      popTop.data
    else
      raise "Unable to remove empty nodes"
    end
  end

  def peek
    @top.data if @size > 0
  end

  def length
    @size
  end
end
