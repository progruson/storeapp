class Item

  @@discount = 0.1 # переменная класса

  def self.discount # Метод класса
    if Time.now.month == 4
      @@discount += 0.2
    else
      @@discount
    end
  end

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

  def price
    @price - @price*self.class.discount
  end

end
