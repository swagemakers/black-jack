# frozen_string_literal: true

require_relative 'card.rb'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    build_cards
  end

  def build_cards
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
    cards.shuffle
  end

  def deal_card(cards) #nope
    @cards.pop
  end
end
