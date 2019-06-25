# frozen_string_literal: true
require_relative 'player.rb'
class Bank
  attr_reader :amount

  def debit(amount)
    amount
  end

  def withdraw(amount)
    amount
    amount -= 10
    amount
  end
end
