require_relative('./bear.rb')
require_relative('./fish.rb')

class River
  attr_reader :name
    def initialize(name)
      @name = name
    end
end 