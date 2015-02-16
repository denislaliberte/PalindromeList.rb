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
  it "two different items is not palindromic" do
    pending("implement add before")
    list = List.new()
    list.add("a").add("b")
    expect(list.palindromic()).to eq(false)
  end
  it "return an array of the valuse" do
    list = List.new()
    list.add("a")
    expect(list.values()).to eq(["a"])
  end
end
