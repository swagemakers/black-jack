# frozen_string_literal: true

require_relative 'card.rb'
require_relative 'deck.rb'
require_relative 'player.rb'
require_relative 'dealer.rb'

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

  def dealers_move(deck)
    if value < 17
      @dealer_hand.get_card(deck)
      dealers_move(deck)
    end
  end
end
