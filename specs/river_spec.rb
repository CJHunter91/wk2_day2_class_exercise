require('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')

class TestRiver < MiniTest::Test
  def test_river_has_name()
    river = River.new("Amazon")
    assert_equal("Amazon", river.name())
  end
end