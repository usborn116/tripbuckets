class Transaction < ApplicationRecord
  belongs_to :trip
  belongs_to :budget_category
end
