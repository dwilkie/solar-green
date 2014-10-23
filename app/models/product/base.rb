class Product::Base < ActiveRecord::Base
  self.table_name = :products
  TYPES = ["Product::Solar", "Product::Battery", "Product::ChargeController", "Product::GridTie", "Product::PvInverterPump"]

  has_many :inventory_invoice_line_items, foreign_key: "product_id"
  has_many :inventory_line_items, foreign_key: "product_id"

  validates_lengths_from_database
  validates :name, presence: true

  def self.types
    TYPES.map(&:constantize)
  end

  def stock
    inventory_line_items.in_stock.count
  end

  def unit_price
    inventory_line_items.in_stock.average(:unit_price)
  end

  def final_unit_price
    inventory_line_items.in_stock.average(:final_unit_price)
  end
end
