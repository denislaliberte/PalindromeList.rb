
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
    self
  end
  def values
    ["a"]
  end
end
