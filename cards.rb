RANK = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King']
SUIT = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
class Cards

  attr_reader :rank, :suit
  attr_accessor :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def card_value
    @facecards = ['Jack', 'Queen', 'King']
    return 10 if @facecards.include?(@value)
    return 11 if @value == 'Ace'
    return @value
  end

  def to_s
    "#{@value} of #{suit}"
  end
end