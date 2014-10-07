class Product::Battery < Product::Base
  validates :voltage, presence: true
end
