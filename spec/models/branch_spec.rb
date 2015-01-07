require 'rails_helper'

describe Branch do
  it { should have_many :users }
  it { should have_many :inventory_invoices }
  it { should have_one :address }
end
