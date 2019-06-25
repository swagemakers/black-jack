require_relative 'bank.rb'

class GameBank < Bank

  DEF_BET = 10

  def initialize
    @reserved_money = bet
  end

  def bet(*players)
    players.each do |player|
      @player.withdraw
    self.reserved_money += DEF_BET
  end

  def reward_winner(winner)

  end

  def refund(*players)

  end
end