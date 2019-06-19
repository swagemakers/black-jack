class Dealer < Player

  DEALER = 'DEALER'

  attr_accessor :cards, :bank, :points
  attr_reader :name

  def initialize(name = DEALER)
    @name = DEALER
    @value = value
    @cards = []
    super
  end
end
