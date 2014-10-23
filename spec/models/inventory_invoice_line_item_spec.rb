require 'rails_helper'

describe InventoryInvoiceLineItem do
  it { should belong_to(:product) }
end
