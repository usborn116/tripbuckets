require 'rails_helper'

RSpec.describe "budget_categories/index", type: :view do
  before(:each) do
    assign(:budget_categories, [
      BudgetCategory.create!(
        name: "Name",
        budgeted_amount: 2.5,
        trip: nil
      ),
      BudgetCategory.create!(
        name: "Name",
        budgeted_amount: 2.5,
        trip: nil
      )
    ])
  end

  it "renders a list of budget_categories" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
