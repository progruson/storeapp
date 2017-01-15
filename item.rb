class Item

  def initialize
    @price = 30 # object property
  end

  # attr_accessor :price, :weight

  attr_reader :price, :weight # getters
  attr_writer :price          # setters

end

item1 = Item.new

item1.price = 10
puts item1.price

item1.weight = 10
puts item1.weight
