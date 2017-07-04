require_relative('./bear.rb')
require_relative('./fish.rb')

class River
  attr_reader :name, :fishes
    def initialize(name)
      @name = name
      @fishes = [Fish.new('Salmon'), Fish.new('Cod')]
    end


end 