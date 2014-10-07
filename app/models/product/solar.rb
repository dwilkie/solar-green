class Product::Solar < Product::Base
  validates :power_rating, presence: true
end
