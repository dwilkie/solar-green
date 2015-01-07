require 'rails_helper'

describe User do
  describe "Relations" do
    it { should have_one :address }
    it { should have_many :inventory_invoices }
    it { should belong_to :branch}
  end

  describe "Validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :branch }
    it { should validate_presence_of :phone }
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
  end
end

