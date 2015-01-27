require './Node.rb'

describe "list" do
  it "create a new item" do
    node = Node.new(1)
    expect(node.value).to eq(1)
  end
  it "add an item" do
    node = Node.new(1).add(2)
    expect(node.end.value).to eq(2)
  end
end
