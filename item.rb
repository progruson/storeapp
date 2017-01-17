class Item

  def initialize(options={})
    @price  = options[:price]  # object property
    @name   = options[:name]   # object property
  end

  attr_reader :price, :name # getters
  attr_writer :price        # setters

  def info
    yield(price)
    yield(name)
  end

end
