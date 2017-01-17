class Cart

  attr_reader :items # getter

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push item # @items.push(item)
  end

  def remove_item
    @items.pop
  end

  def validate
    @items.each { |i| puts "Item has no price" if i.price.nil? }
  end

end
