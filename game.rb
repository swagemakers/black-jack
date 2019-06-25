require_relative "card.rb"
require_relative "deck.rb"
require_relative "hand.rb"
require_relative "player.rb"
require_relative "dealer.rb"

class Game
attr_reader :cards, :bank, :points
attr_accessor :deck, :players_hand, :dealer_hand

  DEALER = 'Dealer'

  def initialize
    @deck = Deck.new
    play_game
    @player = create_player
    @dealer = Dealer.new(DEALER)
  end

  def play_game
    loop do
      create_player
      play_round
      new_round
    end
  end

  def create_player
    puts "Enter your name: "
    name = gets.chomp.to_s
    Player.new(name)
  end

  def play_round
    loop do
      first_cards
      status
      show_game_options
      determine_winner
    end
  end

  def new_round
    puts "Choose one of the following options:"
    loop do show_options

      case gets.to_i
      when 1 then play_round
      when 0 then break
      end
    end
  end

  def show_options
    puts "1 - Play a new round"
    puts "0 - Quit"
  end

  def status
    puts "#{name} cards and value are: #{@player.cards}, #{@hand.points}"
  end

  def first_cards
    2.times { @players_hand.get_card(@deck) }
    2.times { @hand.get_card(@deck) }
  end

  def show_game_options
    loop do
      options_description

      case gets.to_i
      when 1 then hit!
      when 2 then stand
      when 3 then determine_winner
      end
    end
  end

  def options_description

    puts "1 - Get a card"
    puts "2 - Stand"
    puts "3 - Open hands"
  end

  def hit!
    @players_hand.get_card(deck)
  end

  def stand
    @dealer_hand.dealers_move(@deck)
    @winner = determine_winner(@players_hand.points, @dealer_hand.points)
  end

  def determine_winner(players_hand, dealer_hand)
    if @players_hand.points > 21 && @dealer_hand.points > 21
      puts "It's a tie"
    elsif @players_hand.points == @dealer_hand.points
      puts "It's a tie"
    elsif @player_hand.value > 21
      puts "Dealer has won this round"
    elsif @dealer_hand.value  > 21
      puts "#{name} has won this round"
    elsif @players_hand.points > @dealer_hand.points
      puts "#{name} has won this round"
    elsif @dealer_hand.points > @players_hand.points
      puts "Dealer has won this round"
    end

    winner
  end

  def winner
    @winner = determine_winner(@players_hand.points, @dealer_hand.points)
    if winner
      @bank.reward_winner(winner)
      @interface.show_winner(winner)
    else
      @bank.refund(@player, @dealer)
      @interface.show_draw
    end
  end
end

