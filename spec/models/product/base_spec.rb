require 'rails_helper'

describe Product::Base do
  it { should ensure_length_of(:name).is_at_most(255) }
  it { should ensure_length_of(:type).is_at_most(255) }
  it { should have_many(:inventory_invoice_line_items) }

  describe Product::Battery do
    it { should validate_presence_of(:voltage) }
    it { should validate_presence_of(:current) }
  end

  describe Product::Solar do
    it { should validate_presence_of(:power_rating) }
  end

  describe Product::ChargeController do
    it { should validate_presence_of(:current) }
  end

  context "self.types" do
    xit "should pending"
  end

end
