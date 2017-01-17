class Item

  def initialize(options={})
    @price  = options[:price]  # object property
    @weight = options[:weight] # object property
    @name   = options[:name]   # object property
  end

  attr_reader :price, :weight, :name # getters
  attr_writer :price                 # setters

  def info
    yield(price)
    yield(weight)
    yield(name)
  end

end
