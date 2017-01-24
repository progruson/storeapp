class RealItem < Item

  attr_reader :weight

  def initialize(options)
    @weight = options[:weight] # object property
    super(options[:name], options)
  end

  def info
    yield(weight)
    super
  end

end