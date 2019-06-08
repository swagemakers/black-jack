class Cards

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def card_value(rank)
    case value do
    when 1
      then 1
    when 2..10
      then value
    when 11..13
      then 10
    end
  end
end


