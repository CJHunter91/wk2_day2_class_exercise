require('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')

class TestRiver < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fishes = @river.fishes
  end
  def test_river_has_name()
    assert_equal("Amazon", @river.name())
  end

  def test_fish_object_from_river()
    fishes = @river.fishes()
    assert_equal(@river.fishes, @fishes)
  end
end