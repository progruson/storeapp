require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"

describe Item do

  it "calculates price according to a special formula" do
    item = Item.new("kettle", price: 200)
    # item.price.should == 232 # the old version of the record
    expect(item.price).to eql(232.to_f)
  end

end
