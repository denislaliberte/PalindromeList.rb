class Node
  attr_reader :value, :end
  def initialize(value)
    @value = value
  end
end

class List
  attr_reader :head
  def append(value)
    @head = Node.new(value)
  end
end
