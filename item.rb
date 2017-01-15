class Item

  def initialize(options={})
    @price  = options[:price]  # object property
    @weight = options[:weight] # object property
  end

  attr_reader :price, :weight # getters
  attr_writer :price          # setters

end
