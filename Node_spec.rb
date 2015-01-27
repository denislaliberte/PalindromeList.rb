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
  it "delete the end of a list" do
    list = List.new()
    list.append(1)
    list.append(2)
    list.deleteEnd()
    expect(list.end.value).to eq(1)
  end
  it "unique item is palindromic" do
    list = List.new()
    list.append(1)
    expect(list.palindromic()).to eq(true)
  end
  it "is palindromic if list is empty" do
    list = List.new()
    expect(list.palindromic()).to eq(true)
  end

  it "is it not palindromic if it contains two different items" do
    list = List.new()
    list.append(1)
    list.append(2)
    expect(list.palindromic()).to eq(false)
  end
end
