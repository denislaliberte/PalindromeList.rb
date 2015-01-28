require './List.rb'

describe "@list" do
  before(:each) do
    @list = List.new()
  end
  it "create a @list with one element" do
    @list.append(1)
    expect(@list.head.value).to eq(1)
    expect(@list.end.value).to eq(1)
  end
  it "add three item in a @list" do
    @list.append(1)
    @list.append(2)
    expect(@list.end.value).to eq(2)
    expect(@list.head.value).to eq(1)
    expect(@list.head.next.value).to eq(2)
    expect(@list.end.previous.value).to eq(1)
    @list.append(3)
    expect(@list.end.value).to eq(3)
    expect(@list.end.previous.value).to eq(2)
    expect(@list.end.previous.previous.value).to eq(1)
    expect(@list.end.previous).to eq(@list.head.next)
  end
  it "unique item is palindromic" do
    @list.append(1)
    expect(@list.palindromic()).to eq(true)
  end
  it "is palindromic if @list is empty" do
    expect(@list.palindromic()).to eq(true)
  end

  it "it is not palindromic if it contains two different items" do
    @list.append(1)
    @list.append(2)
    expect(@list.palindromic()).to eq(false)
  end
  it "it is palindromic if it contains two items with the same value" do
    @list.append(1)
    @list.append(1)
    expect(@list.palindromic()).to eq(true)
  end
  it "detect a three item palindromic @list" do
    @list.append(1)
    @list.append(2)
    @list.append(1)
    expect(@list.palindromic()).to eq(true)
  end
  it "detect a non palindromic four item @list" do
    @list.append(1)
    @list.append(2)
    @list.append(3)
    @list.append(1)
    expect(@list.palindromic()).to eq(false)
  end
  it "detect a non palindromic four item @list" do
    @list.append(1)
    @list.append(2)
    @list.append(2)
    @list.append(1)
    expect(@list.palindromic()).to eq(true)
  end
  it "detect a palindromic four item list" do
    @list.append(1).append(2).append(3).append(2).append(1)
    expect(@list.palindromic()).to eq(true)
  end
  it "detect a palindromic four item list" do
    @list.append(1).append(2).append(3).append(3).append(1)
    expect(@list.palindromic()).to eq(false)
  end
end
