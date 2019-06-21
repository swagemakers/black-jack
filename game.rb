require_relative "cards.rb"
require_relative "deck.rb"
require_relative "hand.rb"
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

  #here comes the loop for all the input, make the bank work!

  def hit!
    @players_hand.get_card(deck)
  end

  def stand
    @dealer_hand.dealers_move(@deck)
    @winner = determine_winner(@players_hand.points, @dealer_hand.points)
  end

  def determine_winner(@players_hand.points, @dealer_hand.points)
    if @player_hand.value > 21
      puts "Dealer has won this round"
    elsif @dealer_hand.value  > 21
      puts "#{name} has won this round"
    end
    #two more options go in here
  end

  def status
    puts "#{name} cards and value are: #{@player.cards}, #{@hand.points}"
  end
end

