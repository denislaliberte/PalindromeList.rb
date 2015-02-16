require './Node.rb'

describe "Node" do
  it "create node" do
    node = Node.new(1)
    expect(node.value).to eq(1)
  end
end

describe "List" do 
  it "empty string is palindromic" do
    list = List.new()
    expect(list.palindromic()).to eq(true)
  end
end
