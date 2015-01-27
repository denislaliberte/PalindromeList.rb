class Node
  attr_reader :value
  attr_accessor :next
  def initialize(value)
    @value = value
  end
end

class List
  attr_reader :head, :end
  def append(value)
    if @end
      @end.next = Node.new(value)
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
end
