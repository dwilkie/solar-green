class Product::Base < ActiveRecord::Base
  self.table_name = :products
  TYPES = [Product::Solar, Product::Battery]
  validates_lengths_from_database
  validates :name, presence: true
end
