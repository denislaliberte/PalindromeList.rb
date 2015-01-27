class Node
  attr_reader :value, :previous
  attr_accessor :next
  def initialize(value, previous = nil)
    @value = value
    @previous = previous
  end
end

class List
  attr_reader :head, :end

  def append(value)
    if @end
      @end.next = Node.new(value,@end)
      @end = @end.next
    else
      @end = Node.new(value)
    end

    if not @head
      @head = @end
    end
  end

  def deleteHead
    @head = @head.next
  end

  def deleteEnd
    @end = @end.previous
  end

  def palindromic
    true
  end
end
