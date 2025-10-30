class Trip < ApplicationRecord
  has_many :budget_categories
  has_many :transactions, through: :budget_categories
  
  def complete?
    end_date < Date.current
  end
end
