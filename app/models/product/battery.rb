class Product::Battery < Product::Base
  validates :voltage, :current, presence: true
end
