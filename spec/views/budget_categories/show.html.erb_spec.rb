require 'rails_helper'

RSpec.describe "budget_categories/show", type: :view do
  before(:each) do
    assign(:budget_category, BudgetCategory.create!(
      name: "Name",
      budgeted_amount: 2.5,
      trip: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
