require 'rails_helper'

describe InventoryInvoice do

  describe "relations" do
    it { should belong_to :user }
    it { should belong_to :branch }
  end

  describe "validations" do
    it { should validate_presence_of :branch }
    it { should validate_presence_of :shipping_cost }
    it { should validate_presence_of :vat }
    it { should validate_presence_of :other_cost }
    it { should validate_presence_of :date }
    it { should validate_presence_of :user }
  end
end
