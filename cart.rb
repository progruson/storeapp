class Cart

  attr_reader :items # getter

  include ItemContainer

  def initialize
    @items = [] # Array.new
  end

end
