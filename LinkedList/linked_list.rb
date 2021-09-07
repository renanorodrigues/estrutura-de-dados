require_relative 'node.rb'

class LinkedList
  attr_writer :size, :head

  def initialize(head=nil)
    if head.nil?
      @head = nil
      @size = 0
    else
      @head = Node.new(head)
      @size = 1
    end
  end

  def push(elem)
    if @head
      pointer = @head
      
      while pointer.next
        pointer = pointer.next
      end

      pointer.next = Node.new(elem)
    else
      @head = Node.new(elem)
    end

    @size += 1
  end

  def get(index)
    pointer = getNode(index)

    if pointer
      return pointer.data
    else
      raise "Index out of range"
    end
  end

  def set(index, data)
    pointer = getNode(index)

    if pointer
      pointer.data = data
    else
      raise "Index out of range"
    end
  end

  def length
    @size
  end

  def index(elem)
    pointer = @head
    i = 0

    while pointer
      return i if pointer.data == elem
      pointer = pointer.next
      i += 1
    end

    raise "#{elem} not find in list"
  end

  def insertion(index, data)
    node = Node.new(data)

    if index.zero?
      node.next = @head
      @head = node
    else
      pointer = getNode(index - 1)
      node.next = pointer.next
      pointer.next = node
    end

    @size += 1
  end

  def remove(elem)
    if @head.nil?
      raise "#{elem} not find in list"
    elsif @head.data == elem
      @head = @head.next
      @size += 1
      return true
    else
      ancestor = @head
      pointer = @head.next
      
      while pointer
        if pointer.data == elem
          ancestor.next = pointer.next
          pointer.next = nil
          @size += 1
          return true
        end

        ancestor = pointer
        pointer = pointer.next
      end
    end

    raise "#{elem} not find in list"
  end

  private

  def getNode(index)
    pointer = @head

    index.times do
      if pointer
        pointer = pointer.next
      else
        raise "Index out of range"
      end
    end

    return pointer
  end
end
