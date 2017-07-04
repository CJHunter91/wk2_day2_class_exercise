require_relative('./fish.rb')
require_relative('./river.rb')


class Bear
  attr_reader :name, :stomach
    def initialize(name)
      @name = name
      @stomach  = []
    end

  def take_fish_from_river(river)
    fish = river.lose_fish()
    @stomach.push(fish) if !fish.nil?
  end

  def roar()
    return "Rawr"
  end

  def food_count()
    return @stomach.count()
  end
end 