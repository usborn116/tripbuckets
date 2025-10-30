require 'rails_helper'

RSpec.describe BudgetCategory, type: :model do
  describe '#sum_transactions' do
    it 'returns the sum of all transactions for the food category' do
      budget_category = budget_categories(:food)

      expect(budget_category.sum_transactions).to eq(15.00)
    end
    
    it 'returns the sum of all transactions for the shopping category' do
      budget_category = budget_categories(:shopping)

      expect(budget_category.sum_transactions).to eq(129.99)
    end
  end
end
