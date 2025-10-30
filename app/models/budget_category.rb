class BudgetCategory < ApplicationRecord
  belongs_to :trip
  has_many :transactions
end

