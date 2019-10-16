require 'minitest'
require 'minitest/autorun'
require_relative '../lib/show'

class ShowTest < MiniTest::Test
  def setup
    @kitt = Character.new({name: 'KITT', actor: 'William Daniels', salary: 1000000})
    @michael_knight = Character.new({name: 'Michael Knight', actor: 'David Hasselhoff', salary: 1600000})
    @knight_rider = Show.new({name: 'Knight Rider', creator: 'Glen Larson', characters: [@kitt, @michael_knight]})
  end

  def test_exist
    assert_instance_of Show, @knight_rider
  end

  def test_name
    assert_equal 'Knight Rider', @knight_rider.name
  end

  def test_creator
    assert_equal 'Glen Larson', @knight_rider.creator
  end

  def test_characters
    assert_equal [@kitt, @michael_knight], @knight_rider.characters
  end

  def test_total_salary
    assert_equal 2600000, @knight_rider.total_salary
  end   
end
