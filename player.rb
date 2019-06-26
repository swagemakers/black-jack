# frozen_string_literal: true
require_relative 'hand.rb'

class Player
  attr_accessor :cards, :bank, :points
  attr_reader :name

  def initialize(name)
    @name = name
    @bank = 100
    @players_hand = Hand.new
  end

  def debit(amount)
    @bank += amount
  end

  def withdraw(amount)
    @bank -= amount
  end

  def new_card #for nil class
    @players_hand.get_card
  end
end
