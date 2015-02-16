require './Node.rb'

describe "Node" do
  it "create node" do
    node = Node.new(1)
    expect(node.value).to eq(1)
  end
end

describe "List" do 
  subject(:list) { List.new() }
  it "empty string is palindromic" do
    expect(list.palindromic()).to be true
  end
  it "two different items is not palindromic" do
    list.add("a").add("b")
    expect(list.palindromic()).to be false
  end
  it "detect not palindromic list" do 
    list.add("a").add("b").add("c").add("a")
    expect(list.palindromic()).to be false
  end
  it "return an array of the valuse" do
    list.add("a").add("b").add("c")
    expect(list.values()).to eq(["a","b","c"])
  end
end
