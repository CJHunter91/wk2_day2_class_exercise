require_relative('./bear.rb')
require_relative('./river.rb')


class Fish
  attr_reader :name
    def initialize(name)
      @name = name
    end
end 