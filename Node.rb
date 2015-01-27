class Node
  attr_reader :value, :end

  def initialize(value)
    @value = value
  end

  def add(value)
    @next = Node.new(value)
    @end = @next
    self
  end
end

class List

end
