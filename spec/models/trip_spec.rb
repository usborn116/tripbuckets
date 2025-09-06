require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe "#complete?" do
    context "when the date is in the past" do
      trip = Trip.new(end_date: "01/01/2025")

      it "is complete" do
        expect(trip.complete?).to eq(true)
      end
    end

    context "when the date is in the future" do
      trip = Trip.new(end_date: 1.month.from_now)

      it "is not complete" do
        expect(trip.complete?).to eq(false)
      end
    end
  end
end
