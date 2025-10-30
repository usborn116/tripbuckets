class BudgetCategory < ApplicationRecord
  belongs_to :trip
  has_many :transactions
  
  def sum_transactions
    transactions.sum(:amount)
  end
end

