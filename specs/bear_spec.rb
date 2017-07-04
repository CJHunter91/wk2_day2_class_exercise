require('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')


class TestBear < MiniTest::Test
  def test_bear_has_name()
    bear = Bear.new("Yogi")
    assert_equal("Yogi", bear.name())
  end

end