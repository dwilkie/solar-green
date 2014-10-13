class Product::Base < ActiveRecord::Base
  self.table_name = :products
  TYPES = [Product::Solar, Product::Battery, Product::ChargeController, Product::GridTie]
  validates_lengths_from_database
  validates :name, presence: true
end
