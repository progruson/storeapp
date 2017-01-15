class Item

  def initialize
    @price = 30 # object property
  end

  # getter
  def price
    @price
  end

  #setter
  def price=(price_value)
    @price = price_value
  end

end

item1 = Item.new
puts item1.price

item1.price = 10 # or item1.price=(10)
puts item1.price
item1.price = 20
puts item1.price
