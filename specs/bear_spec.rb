require('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')


class TestBear < MiniTest::Test

  def setup
    @cod = Fish.new('Cod')
    @fishes = [Fish.new('Salmon'), @cod]
    @bear = Bear.new("Yogi")
    @river = River.new("Amazon", @fishes)
  end

  def test_bear_has_name()
    bear = Bear.new("Yogi")
    assert_equal("Yogi", bear.name())
  end

  def test_take_fish_from_river()
    @bear.take_fish_from_river(@river)
    assert_equal(@cod,@bear.stomach()[0])
  end
end