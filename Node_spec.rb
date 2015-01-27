require './Node.rb'

describe "list" do
  it "create a list with one element" do
    list = List.new()
    list.append(1)
    expect(list.head.value).to eq(1)
    expect(list.end.value).to eq(1)
  end
  it "add three item in a list" do
    list = List.new()
    list.append(1)
    list.append(2)
    expect(list.end.value).to eq(2)
    expect(list.head.value).to eq(1)
    list.append(3)
    expect(list.end.value).to eq(3)
  end
  it "delete head in a list" do
    list = List.new()
    list.append(1)
    list.append(2)
    list.deleteHead()
    expect(list.head.value).to eq(2)
  end
end
