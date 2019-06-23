require_relative "Hand.rb"

class Player
  attr_accessor :cards, :bank, :points
  attr_reader :name

  def initialize(name)
    @name = name
    @bank = 100
    @value = 0
    @cards = []
    @players_hand = Hand.new
  end
end
