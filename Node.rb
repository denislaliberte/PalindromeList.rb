
class Node
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def add(value)
    @next = Node.new(value)
    self
  end

end

