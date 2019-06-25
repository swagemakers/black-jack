# frozen_string_literal: true
require_relative 'player.rb'
class Bank
  attr_reader :amount

  def debit(amount)
    @bank += amount
  end

  def withdraw(amount)
    @bank -= amount
  end
end
