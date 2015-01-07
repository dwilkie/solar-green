class InventoryInvoice < ActiveRecord::Base
  has_many :inventory_invoice_line_items
  belongs_to :user
  belongs_to :branch

  accepts_nested_attributes_for :inventory_invoice_line_items

  validates :shipping_cost, :vat, :other_cost, :date, :branch, :user, presence: true

end
