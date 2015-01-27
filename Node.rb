class Node
  attr_reader :value
  attr_accessor :next, :previous
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
    if @head
      @head.previous = nil
    end
  end

  def deleteEnd
    @end = @end.previous
  end

  def palindromic(first = @head, last = @end)
    if first and last 
      if first == last or first.previous == last
        true
      else
        first.value == last.value and self.palindromic(@head.next,@end.previous)
      end
    else
      true
    end
  end
end
