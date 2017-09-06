require 'rails_helper'

RSpec.describe Event, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description)}
    it { is_expected.to validate_length_of(:name).is_at_most(50) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
  end

  describe "bargain" do
    let(:user)              { create :user }
    let(:bargain_event)     { create :event, price: 20, user: user }
    let(:no_bargain_event)  { create :event, price: 35, user: user }

    it "returns true if the price is smaller than 30 EUR" do
      expect(bargain_event.bargain?).to eq(true)
      expect(no_bargain_event.bargain?).to eq(false)
    end
  end

  describe "order_by_price" do
    let(:user)    { create :user }
    let!(:event1)  { create :event, price: 100, user: user }
    let!(:event2)  { create :event, price: 20, user: user }
    let!(:event3)  { create :event, price: 35, user: user }

    it "returns an array of the events sorted by price" do
      expect(Event.order_by_price).to eq([event2, event3, event1])
    end
  end

end
