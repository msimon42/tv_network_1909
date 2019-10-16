class Character
  def initialize(info)
    @info = info
  end

  def name
    @info[:name]
  end

  def actor
    @info[:actor]
  end

  def salary
    @info[:salary]
  end
end
