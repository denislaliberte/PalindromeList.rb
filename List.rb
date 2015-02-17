
class List
  attr_reader :head, :end

  def append(value)
    newNode = Node.new(value,@end)
    self.add_to_head(newNode)
    self.add_to_end(newNode)
    self
  end

  def add_to_head(newNode)
    if not @head
     @head = newNode
    end
  end

  def add_to_end(newNode)
    if @end
      @end.next = newNode
      @end = newNode
    else
      @end = newNode
    end
  end

  def append_multiple(values)
    values.each do |value|
      self.append(value)
    end
  end

  def palindromic(first = @head, last = @end)
    if first == last or first.previous == last
      true
    else
      first.value == last.value and self.palindromic(first.next,last.previous)
    end
  end
end
