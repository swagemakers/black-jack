class Player < Main_player
  attr_accessor :cards, :bank, :points
  attr_reader :name

  def initialize(name)
    @name = name
    @value = value
    @cards = []
    super
  end
end
