class Node
  attr_accessor :data, :right, :left

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end
