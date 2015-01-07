class InventoryLineItem < ActiveRecord::Base
  belongs_to :inventory_invoice_line_item
  belongs_to :product, class_name: "Product::Base"

  validates :product, :inventory_invoice_line_item, :unit_price, :final_unit_price, :state, presence: true

  def self.in_stock
    where(state: "in_stock")
  end

  def self.group_by_product_and_unit_price
    group(:product_id, :unit_price).count
  end

end
