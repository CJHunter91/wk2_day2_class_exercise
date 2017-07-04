require_relative('./fish.rb')
require_relative('./river.rb')


class Bear
  attr_reader :name
    def initialize(name)
      @name = name
    end
end 