class BudgetCategory < ApplicationRecord
  belongs_to :trip
  has_many :transactions
  
  def spent
    update(sum_cache: sum_transactions) if sum_cache.nil?
    sum_cache
  end
  
  def add(amount)
    update!(sum_cache: spent + amount)
  end
  
  def subtract(amount)
    update!(sum_cache: spent - amount)
  end
  
  private
  
  def sum_transactions
    transactions.sum(:amount)
  end
  
end

