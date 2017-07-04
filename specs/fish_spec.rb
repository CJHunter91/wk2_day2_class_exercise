require('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')


class TestFish < MiniTest::Test

  def test_fish_has_name
    fish = Fish.new("Bob")
    assert_equal("Bob", fish.name())
  end

end