require './Node.rb'

describe "list" do
  it "create a new item" do
    node = Node.new(1)
    expect(node.value).to eq(1)
  end
end
