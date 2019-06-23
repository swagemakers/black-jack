require_relative 'cards.rb'

class Deck
attr_reader :cards

  def initialize
    @cards = Deck.build_cards
  end

  def self.build_cards
    cards = []
    Card::SUIT.each do |suit|
      Card::RANKS.each do |rank|
        cards << Card.new(suit, rank)
      end
    end
    cards.shuffle
  end
end
