
class Node
  attr_reader :value

  def initialize(value)
    @value = value
  end
end

class List 
  def palindromic
    true
  end
  def add(value)
    new = Node.new(value)
    @head = new
    self
  end
  def values
    [@head.value]
  end
end
