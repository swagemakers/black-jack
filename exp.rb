require_relative 'cards.rb'
require_relative 'deck.rb'

class Hand
  attr_reader :cards

  def initialize
    @cards = []

  def get_card(deck)
    @cards << deck.cards.pop
  end
