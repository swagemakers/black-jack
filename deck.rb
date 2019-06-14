require_relative 'cards.rb'

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    create_deck!
  end

  def create_deck!
    cards.SUIT.each do |suit|
      cards.RANK.each do |rank|
        @cards << Cards.new(suit, rank)
      end
    end
    @cards.shuffle!
  end
end
