require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        note: "Note",
        amount: 2.5,
        trip: nil
      ),
      Transaction.create!(
        note: "Note",
        amount: 2.5,
        trip: nil
      )
    ])
  end

  it "renders a list of transactions" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Note".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
