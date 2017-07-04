require_relative('./fish.rb')
require_relative('./river.rb')


class Bear
  attr_reader :name, :stomach
    def initialize(name)
      @name = name
      @stomach  = []
    end

  def take_fish_from_river(river)
    @stomach << river.lose_fish()
  end

  def roar()
    return "Rawr"
  end

end 