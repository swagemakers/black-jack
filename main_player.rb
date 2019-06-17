require_relative 'cards.rb'
require_relative 'deck.rb'

class Main_player
  attr_accessor :cards, :bank, :points
  attr_reader :name

  def initialize(name)
    @name = name
    @cards = []
    @bank = 100
    @points = 0
  end

  def get_card(deck)
    @cards << deack.cards.pop
  end

  def value
    cards.inject(0) do |sum, card|
      sum += card.value
    end
  end