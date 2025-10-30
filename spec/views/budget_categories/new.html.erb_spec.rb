require 'rails_helper'

RSpec.describe "budget_categories/new", type: :view do
  before(:each) do
    assign(:budget_category, BudgetCategory.new(
      name: "MyString",
      budgeted_amount: 1.5,
      trip: nil
    ))
  end

  it "renders new budget_category form" do
    render

    assert_select "form[action=?][method=?]", budget_categories_path, "post" do

      assert_select "input[name=?]", "budget_category[name]"

      assert_select "input[name=?]", "budget_category[budgeted_amount]"

      assert_select "input[name=?]", "budget_category[trip_id]"
    end
  end
end
