require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'cards.rb'

class Main

  def run
    create_player
    loop do
      play_game
    end
  end

  private

  def create_player
    puts "Enter your name here: "
    name = gets.chomp.to_s
    @name = Player.new(name)
  end

  def play_game
    loop do
      show_play_game

      case gets.to_i
      when 1 then skip_turn
      when 2 then add_card
      when 3 then open_hand
      when 0 then break
      end
    end
  end

  def intro
    loop do
      options

      case gets.to_i
      when 1 then create_player
      when 0 then break
      end
    end
  end

  def options
    puts 'Welcome to Blackjack. Choose one of the following options:'
    puts '1 - Start the game'
    puts '0 - Quit'
  end

  def show_play_game
    puts '1 - Skip turn'
    puts '2 - Add card to hand'
    puts '3 - Open hand'
    puts '0 - Quit'
  end

end

def main_action
    @game = Game.new#when player chooses to or when both hit 3 cards
    create_player
    loop do

      if @players_hand.deck <= cards(2) #questionable situation over here recheck how it works
        put "Choose one of the following options: "

        case gets.to_i
        when 1 then status
        when 2 then get_card
        when 3 then stand
        when 4 then open_hand
        end
      elsif @players_hand.deck >= cards(3)
        open_hand
      end
    end
  end

  def create_player
    puts "Enter your name here: "
    name = gets.chomp.to_s
    Player.new(name)
  end

  def status
    puts "#{name} cards and value are: #{@player.cards}, #{@hand.points}"
  end

  def get_card
    @main_player.get_card(@deck)
  end

  def stand
    @dealer_hand.move_dealer(@deck)
  end

  def open_hand
    puts "#{name} value is: #{@hand.points}. Dealers value is: #{@hand.points}"
    puts "The winner is #{@winner}"
  end

  #determine_winner should happen while opening hands

  def determine_winner
    if @player_hand.value > 21
      puts "Dealer has won this round"
    elsif @dealer_hand.value  > 21
      puts "#{name} has won this round"
    end






    class Cards

SUITS = ['♠', '♥', '♦', '♣'].freeze
RANKS = [*(2..10), 'J', 'K', 'Q', 'A'].freeze

  attr_reader :rank, :suit
  attr_accessor :value

  def initialize(suit, value)
    @suit = suit
    @rank = rank
    @value = card_value
  end

  def card_value
    @facecards = ['Jack', 'Queen', 'King']
    return 10 if @facecards.include?(@value)
    return 11 if @value == 'Ace'
    return @value
  end

  def to_s
    "#{@value} of #{suit}"
  end
end

  end