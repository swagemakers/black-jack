require_relative 'bank.rb'

class GameBank

  BET_SIZE = 10

  def initialize
    @reserved_money = bet
  end

  def bet(*players)
    players.each do |player|
      @player.withdraw
      self.reserved_money += BET_SIZE
    end
  end

  def reward_winner(winner)

  end

  def refund(*players)

  end
end