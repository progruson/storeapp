class RealItem < Item

  attr_reader :weight

  def initialize(options)
    @weight = options[:weight] # object property
    super
  end

  def info
    yield(weight)
    super
  end

end
