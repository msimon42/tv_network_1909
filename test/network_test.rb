require 'minitest'
require 'minitest/autorun'
require_relative '../lib/network'

class NetworkTest < Minitest::Test
  def setup
    @nbc = Network.new({name: 'NBC', shows: []})
    @kitt = Character.new({name: 'KITT', actor: 'William Daniels', salary: 1000000})
    @michael_knight = Character.new({name: 'Michael Knight', actor: 'David Hasselhoff', salary: 1600000})
    @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2000000})
    @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1400000})
    @knight_rider = Show.new({name: 'Knight Rider', creator: 'Glen Larson', characters: [@kitt, @michael_knight]})
    @parks_and_rec = Show.new({name: "Parks and Recreation", creator: "Michael Shur & Greg Daniels", characters: [@leslie_knope, @ron_swanson]})
  end

  def test_exist
    assert_instance_of Network, @nbc
  end

  def test_name
    assert_equal 'NBC', @nbc.name
  end

  def test_shows
    assert_equal [], @nbc.shows
  end

  def test_add_shows
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)
    assert_equal [@knight_rider, @parks_and_rec], @nbc.shows
  end

  def test_highest_paid
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)

    assert_equal "Amy Poehler", @nbc.highest_paid_actor
  end

  def test_payroll
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)

    assert_equal {"David Hasselhoff" => 1600000, "William Daniels" => 1000000, "Amy Poehler" => 2000000, "Nick Offerman" => 1400000}, @nbc.payroll
  end   
end
