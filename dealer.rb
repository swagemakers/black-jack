# frozen_string_literal: true

class Dealer < Player
  DEALER = 'DEALER'

  attr_accessor :cards, :bank, :points
  attr_reader :name

  def initialize(name = DEALER)
    @name = name
    @value = value
    @dealer_hand = Hand.new
    super
  end
end
