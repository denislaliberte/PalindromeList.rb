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
    list.add("a")
    expect(list.palindromic()).to be true
  end
  it "detect two element palindromic list" do
    list.add("a").add("a")
    expect(list.palindromic()).to be true
  end
  it "detect not palindromic two element list" do 
    list.add("a").add("b")
    expect(list.palindromic()).to be false
  end
  it "palindromic list" do
    list.add("a").add("b").add("a")
    expect(list.palindromic()).to be true
  end
  it "detect not palindromic four elements list" do
    list.add("a").add("b").add("c").add("a")
    expect(list.palindromic()).to be false
  end
  it "return an array of the valuse" do
    list.add("a").add("b").add("c")
    expect(list.values()).to eq(["a","b","c"])
  end
end
