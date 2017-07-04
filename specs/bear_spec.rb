require('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')


class TestBear < MiniTest::Test

  def setup
    @cod = Fish.new('Cod')
    @salmon = Fish.new('Salmon')
    @fishes = [@salmon, @cod]
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

  def test_roar()
    roar = @bear.roar()
    assert_equal("Rawr", roar)
  end

  def test_food_count()
    @bear.take_fish_from_river(@river)
    assert_equal(1, @bear.food_count())
  end

  def test_take_fish__from_empty_river
    nile = River.new('Nile', [])
    @bear.take_fish_from_river(nile)
    assert_equal(0, @bear.food_count())

  end
end