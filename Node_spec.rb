require './Node.rb'

describe "list" do
  it "create append a value to a list" do
    list = List.new()
    list.append(1)
    expect(list.head.value).to eq(1)
  end
  it "add an item" do
    node = Node.new(1).add(2)
    expect(node.end.value).to eq(2)
  end
end
