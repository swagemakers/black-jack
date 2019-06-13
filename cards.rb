RANK = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]
SUIT = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
class Cards

  attr_reader :rank, :suit
  attr_accessor :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def card_value
    value = case @rank.to_i
      when 1 then 11
      when 2..10 then value
      when 11..13 then 10
    end
  end

  def display_rank
    case @rank
      when "1" then "Ace"
      when "11" then "Jack"
      when "12" then "Queen"
      when "13" then "King"
      when 2..10 then @rank
    end
  end

  def to_s
    "#{display_rank} of #{suit}'s value is #{value}"
  end
end