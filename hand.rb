require_relative 'cards.rb'
require_relative 'deck.rb'

class Hand
  attr_reader :points, :cards

  def initialize
    @cards = []
  end

  def get_card(deck)
    @cards << deck.cards.pop
  end

  def points
    cards.inject(0) do |sum, card|
      sum += card.value
    end
  end
end
