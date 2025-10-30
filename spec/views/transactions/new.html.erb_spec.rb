require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      note: "MyString",
      amount: 1.5,
      trip: nil
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input[name=?]", "transaction[note]"

      assert_select "input[name=?]", "transaction[amount]"

      assert_select "input[name=?]", "transaction[trip_id]"
    end
  end
end
