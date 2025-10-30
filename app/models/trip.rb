class Trip < ApplicationRecord
  has_many :budget_categories
  has_many :transactions
  
  def complete?
    end_date < Date.current
  end
end
