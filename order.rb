class Order

  attr_reader :items # getter

  include ItemContainer

  def initialize
    @items = []
    # ...
  end

  def place
    # actually place an order
  end

end
