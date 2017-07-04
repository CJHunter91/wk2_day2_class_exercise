require_relative('./bear.rb')
require_relative('./fish.rb')

class River
  attr_reader :name, :fishes
    def initialize(name, fishes)
      @name = name
      @fishes = fishes
    end

    def lose_fish()
      return @fishes.pop
    end
end 