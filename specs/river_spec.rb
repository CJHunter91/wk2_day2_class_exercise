require('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')

class TestRiver < MiniTest::Test

  def setup()
    # @fishes = @river.fishes
    @fishes = [Fish.new('Salmon'), Fish.new('Cod')]
    @river = River.new("Amazon", @fishes)
  end
  def test_river_has_name()
    assert_equal("Amazon", @river.name())
  end

  def test_fish_object_from_river()
    assert_equal(@river.fishes, @fishes)
  end

  def test_lose_fish()
    assert_equal(@fishes[1], @river.lose_fish())
  end
end