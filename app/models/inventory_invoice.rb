class InventoryInvoice < ActiveRecord::Base
  has_many :inventory_invoice_line_items
  accepts_nested_attributes_for :inventory_invoice_line_items

  validates :shipping_cost, :vat, :other_cost, :date, presence: true
end
