# frozen_string_literal: true

class Card
  SUITS = ['♠', '♥', '♦', '♣'].freeze
  RANKS = [*(2..10), 'J', 'K', 'Q', 'A'].freeze

  attr_reader :rank, :suit
  attr_accessor :value

  def initialize(suit, _value)
    @suit = suit
    @rank = rank
    @value = card_value
  end

  def card_value
    @facecards = %w[Jack Queen King]
    return 10 if @facecards.include?(@value)
    return 11 if @value == 'Ace'

    @value
  end

  def to_s
    "#{@value} of #{suit}"
  end
end
