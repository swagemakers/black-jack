# frozen_string_literal: true
require_relative 'hand.rb'

class Player
  attr_accessor :cards, :bank, :points
  attr_reader :name

  def initialize(name)
    @name = name
    @amount = 100
    @value = 0
    @players_hand = Hand.new
  end

  def status
    puts "#{bankq}"
  end
end
