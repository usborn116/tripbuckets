class Transaction < ApplicationRecord
  belongs_to :budget_category

  after_save :increment_budget_spent
  after_destroy :decrement_budget_spent

  private

  def increment_budget_spent
    budget_category.add(amount) 
  end
  
  def decrement_budget_spent
    budget_category.subtract(amount)
  end
end
