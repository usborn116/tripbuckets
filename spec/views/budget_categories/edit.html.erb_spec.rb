require 'rails_helper'

RSpec.describe "budget_categories/edit", type: :view do
  let(:budget_category) {
    BudgetCategory.create!(
      name: "MyString",
      budgeted_amount: 1.5,
      trip: nil
    )
  }

  before(:each) do
    assign(:budget_category, budget_category)
  end

  it "renders the edit budget_category form" do
    render

    assert_select "form[action=?][method=?]", budget_category_path(budget_category), "post" do

      assert_select "input[name=?]", "budget_category[name]"

      assert_select "input[name=?]", "budget_category[budgeted_amount]"

      assert_select "input[name=?]", "budget_category[trip_id]"
    end
  end
end
