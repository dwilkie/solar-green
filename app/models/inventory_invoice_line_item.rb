class InventoryInvoiceLineItem < ActiveRecord::Base

  has_many :inventory_line_items
  belongs_to :product, class_name: "Product::Base"
  belongs_to :inventory_invoice

  validates :product, :quantity, :unit_price, :final_unit_price, presence: true
  validate :final_unit_price_is_greater_than_unit_price

  before_validation :add_inventory_line_items, on: :create

  private

  def final_unit_price_is_greater_than_unit_price
    errors.add(:final_unit_price, :greater_than_or_equal_to_unit_price) if final_unit_price? && unit_price? && final_unit_price < unit_price
  end

  def add_inventory_line_items
    return unless quantity?
    inventory_line_items.clear
    quantity.times do
      inventory_line_item = inventory_line_items.build(inventory_invoice_line_item: self)
      inventory_line_item.product = product
      inventory_line_item.unit_price = unit_price
      inventory_line_item.final_unit_price = final_unit_price
    end
  end

end
