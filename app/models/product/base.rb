class Product::Base < ActiveRecord::Base
  self.table_name = :products
  TYPES = ["Product::Solar", "Product::Battery", "Product::ChargeController", "Product::GridTie", "Product::PvInverterPump"]

  validates_lengths_from_database
  validates :name, presence: true

  def self.types
    TYPES.map(&:constantize)
  end
end
