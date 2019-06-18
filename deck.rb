require_relative 'cards.rb'

class Deck
attr_reader :cards

  def initialize
    @cards = Deck.build_cards
    #create deck? or not
  end

  def self.build_cards
    cards = []
    SUIT.each do |suit|
      (2..10).each do |number|
        cards << Cards.new(suit, number)
      end
      ["J", "Q", "K", "A"].each do |facecard|
        cards << Cards.new(suit, facecard)
      end
    end
    cards.shuffle
  end


end
