require './Node.rb'

class List
  attr_reader :head, :end

  def append(value)
    newNode = Node.new(value,@end)

    if not @head
     @head = newNode
    end

    if @end
      @end.next = newNode
      @end = newNode
    else
      @end = newNode
    end

    self
  end

  def palindromic(first = @head, last = @end)
    if first == last or first.previous == last
      true
    else
      first.value == last.value and self.palindromic(first.next,last.previous)
    end
  end
end
