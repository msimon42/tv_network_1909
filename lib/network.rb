require_relative 'character'
require_relative 'show'
class Network
  def initialize(info)
    @info = info
  end

  def name
    @info[:name]
  end

  def shows
    @info[:shows]
  end

  def add_show(show)
    @info[:shows] << show
  end

  def highest_paid_actor
    @characters = @info[:shows].map {|show| show.characters}.flatten
    max_character = @characters.max_by {|character| character.salary}
    max_character.actor
  end

  def payroll
    payroll = Hash.new(0)
    @characters.each do |character|
      payroll[character.actor] = character[salary]
    end
    payroll
  end
end
