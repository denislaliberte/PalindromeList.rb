
class Node
  attr_accessor :next, :previous
  attr_reader :value

  def initialize(value)
    @value = value
  end
end

class List 
  def palindromic(first = @head,last = @end)
    if first == last
      true
    else
      first.value == last.value and self.palindromic(first.next, last.previous)
    end
  end
  def add(value)
    new = Node.new(value)
    @head = new unless @head
    @end.next = new unless not @end
    new.previous = @end unless not @end
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
