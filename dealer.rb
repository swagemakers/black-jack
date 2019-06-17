class Dealer < Main_player

  DEALER = 'DEALER'

  attr_accessor :cards, :bank, :points
  attr_reader :name

  def initialize(name = DEALER)
    @name = DEALER
    super
  end
end