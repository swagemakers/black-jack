# frozen_string_literal: true

class Bank
  attr_reader :amount

  def intialize
    @amount = 100
  end

  def debit(amount)
    amount
  end

  def withdraw(amount)
    amount
    amount -= 10
    amount
  end
end
