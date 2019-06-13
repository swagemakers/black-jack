require_relative 'cards.rb'

class Player

  attr_accessor :cards, :bank
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @cards = []
    @bank = 100
  end

  def obtaining_points
    @points = 0
    @cards.each { |card| @points += cards.value }
  end
end
