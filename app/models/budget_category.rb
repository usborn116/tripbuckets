class BudgetCategory < ApplicationRecord
  belongs_to :trip
  has_many :transactions
  
  def spent
    update(sum_cache: sum_transactions) if sum_cache.nil?
    sum_cache
  end
  
  private
  
  def sum_transactions
    transactions.sum(:amount)
  end
  
end

