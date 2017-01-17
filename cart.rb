class Cart

  attr_reader :items # getter

  include ItemContainer::Manager

  def initialize
    @items = [] # Array.new
  end

end
