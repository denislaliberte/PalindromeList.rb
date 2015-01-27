class Node
  attr_reader :value, :end
  def initialize(value)
    @value = value
  end
end

class List
  attr_reader :head, :end
  def append(value)
    @end = Node.new(value)
    if not @head
      @head = @end
    end
  end
end
