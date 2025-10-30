require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe "#complete?" do
    context "when the date is in the past" do
      it "is complete" do
        expect(trips(:completed_trip).complete?).to eq(true)
      end
    end

    context "when the date is in the future" do
      it "is not complete" do
        expect(trips(:incomplete_trip).complete?).to eq(false)
      end
    end
  end
end
