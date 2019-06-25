# frozen_string_literal: true

class Card
  SUITS = ['♠', '♥', '♦', '♣'].freeze
  RANKS = [*(2..10), 'J', 'K', 'Q', 'A'].freeze

  attr_reader :rank, :suit
  attr_accessor :value

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    @value = card_value(@rank)
  end

  def card_value(rank)
    @facecards = %w[J, K, Q]
    if @facecards.include?(@rank)
      return 10
    elsif @rank  == 'A'
      return 11
    else
      return rank.to_i
    end
  end

  def to_s
    "#{@value} of #{suit}"
  end
end
