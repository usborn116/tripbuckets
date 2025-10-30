require 'rails_helper'

RSpec.describe BudgetCategory, type: :model do
  describe '#spent' do
    it 'returns the sum of all transactions for the food category' do
      budget_category = budget_categories(:food)

      expect(budget_category.spent).to eq(15.00)
    end
    
    it 'returns the sum of all transactions for the shopping category' do
      budget_category = budget_categories(:shopping)

      expect(budget_category.spent).to eq(129.99)
    end
  end
  
  describe '#add' do
    it 'increments the spent amount by the amount of the transaction' do
      budget_category = budget_categories(:food)
      budget_category.add(100.00)

      expect(budget_category.spent).to eq(115.00)
    end
  end
  
  describe '#subtract' do
    it 'decrements the spent amount by the amount of the transaction' do
      budget_category = budget_categories(:food)
      budget_category.subtract(5.00)

      expect(budget_category.spent).to eq(10.00)
    end
  end
end
