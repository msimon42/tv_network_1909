require 'minitest'
require 'minitest/autorun'
require_relative '../lib/character'

class CharacterTest < MiniTest::Test
  def setup
    @kitt = Character.new({name: 'KITT', actor: 'William Daniels', salary: 1000000})
  end

  def test_exist
     assert_instance_of Character, @kitt
  end

  def test_name
    assert_equal 'KITT', @kitt.name
  end

  def test_actor
    assert_equal 'William Daniels', @kitt.actor
  end

  def test_salary
    assert_equal 1000000, @kitt.salary
  end

end
