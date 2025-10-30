require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'hooks' do
    it 'updates budget category sum cache after save' do
      budget_category = budget_categories(:food)
      previous_spent = budget_category.spent
      transaction = budget_category.transactions.create!(amount: 10.00)
      expect(budget_category.reload.spent).to eq(previous_spent + 10.00)
    end

    it 'removes from budget category sum cache after destroy' do
      budget_category = budget_categories(:food)
      previous_spent = budget_category.spent
      transaction = transactions(:burger)
      transaction.destroy!
      expect(budget_category.reload.spent).to eq(previous_spent - 10.01)
    end
  end
end
