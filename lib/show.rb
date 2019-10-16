require 'pry'
require_relative 'character'

class Show
  def initialize(info)
    @info = info
  end

  def name
    @info[:name]
  end

  def creator
    @info[:creator]
  end

  def characters
    @info[:characters]
  end

  def total_salary
    salaries = self.characters.map {|character| character.salary}
    salaries.sum
  end
end
