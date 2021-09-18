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
    node.data
  end

  def pop
    if @size > 0
      nodeRemoved = @first
      @first = @first.next
      @size -= 1
      nodeRemoved.data
    else
      raise "Queue has not nodes to remove!"
    end
  end

  def peek
    @first.data if @size > 0
  end

  def length
    @size
  end
end
