# frozen_string_literal: true

require_relative 'card.rb'
require_relative 'deck.rb'
require_relative 'player.rb'
require_relative 'dealer.rb'

class Hand
  attr_reader :points, :cards

  def initialize
    @cards_in_hand = []
    @points = points
  end

  def add_card(card) #nope
    @cards_in_hand << card
  end

 # def points
 #   cards.inject(0) do |sum, card|
 #     sum += card.value
 #   end
 # end

  def dealers_move(deck)
    if value < 17
      @dealer_hand.get_card(deck)
      dealers_move(deck)
    end
  end
end
