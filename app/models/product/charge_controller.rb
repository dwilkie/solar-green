class Product::ChargeController < Product::Base
  validates :current, presence: true
end
