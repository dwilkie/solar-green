class InventoryLineItem < ActiveRecord::Base
  belongs_to :inventory_invoice_line_item
  belongs_to :product, class_name: "Product::Base"

  validates :product, :inventory_invoice_line_item, :unit_price, :final_unit_price, :state, presence: true

  def self.in_stock
    where(state: "in_stock")
  end

end
