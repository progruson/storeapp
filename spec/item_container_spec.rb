require "rspec"
require 'rspec/collection_matchers'

require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/item_container"

class ItemBox

  include ItemContainer

  def initialize
    @items = Array.new
  end

end

describe ItemContainer do

  before(:each) do
    @box = ItemBox.new
    @item1 = Item.new("kettle", price: 200)
    @item2 = Item.new("kettle", price: 300)
  end

  it "adds items into the container" do
    @box.add_item(@item1)
    @box.add_item(@item2)
    # @box.items.should have(2).items
    # expect(@box.items.size).to eq(2)
    expect(@box.items).to have(2).items
  end

  it "removes item from the box" do
    @box.add_item(@item1)
    @box.add_item(@item2)
    expect(@box.remove_item).to be @item2
    @box.remove_item
    expect(@items).to be_nil
  end

  it "raises error if user  is trying to add anything esle but an item" do
    expect { @box.add_item("something else") }.to raise_error(StandardError)
  end

end
