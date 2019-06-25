# frozen_string_literal: true
require_relative 'hand.rb'

class Dealer < Player

  attr_accessor :cards, :bank, :points
  attr_reader :name

  def initialize(name = 'Dealer')
    @name = name
    @bank = 100
    @value = 0
    @dealer_hand = Hand.new
    super
  end
end
