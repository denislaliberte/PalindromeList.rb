
class Node
  attr_accessor :next
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
    @head = new unless @head
    @end.next = new unless not @end
    @end = new
    self
  end
  def values
    [@head.value,@head.next.value]
  end
end
