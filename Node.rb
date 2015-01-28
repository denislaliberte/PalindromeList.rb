class Node
  attr_reader :value, :previous
  attr_accessor :next
  def initialize(value, previous = nil)
    @value = value
    @previous = previous
  end
end
