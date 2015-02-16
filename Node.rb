
class Node
  attr_accessor :next
  attr_reader :value

  def initialize(value)
    @value = value
  end
end

class List 
  def palindromic
    if not @head
      true
    else
      @head.value == @end.value
    end
  end
  def add(value)
    new = Node.new(value)
    @head = new unless @head
    @end.next = new unless not @end
    @end = new
    self
  end
  def values(a = @head)
    if a == @end
      [a.value]
    else
      self.values(a.next).unshift(a.value)
    end
  end
end
