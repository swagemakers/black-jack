require_relative "cards.rb"
require_relative "deck.rb"
require_relative "main_player.rb"
require_relative "player.rb"
require_relative "dealer.rb"

class Game
attr_reader :players_hand, :dealer_hand
attr_accessor :deck

  def initialize
    @deck = Deck.new
    @players_hand = Hand.new(name)
    @dealer_hand = Hand.new
    2.times { @players_hand.get_card(@deck) }
    2.times { @dealer_hand.get_card(@deck) }
  end
end

