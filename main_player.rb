require_relative 'cards.rb'
require_relative 'deck.rb'

class Main_player
  attr_accessor :cards, :bank, :value
  attr_reader :name

  def initialize(name)
    @name = name
    @bank = 100
    @value = 0
    @cards = []
  end

#does not work the way i expect it to
#can't use inject on nil object
#  def value
#    cards.inject(0) do |sum, card|
#      sum += card.value
#    end
#  end
end
