FactoryGirl.define do
  factory(:product, class: Product::Base) do
    name "Product 1"
    factory(:solar, class: Product::Solar) do
      power_rating "100"
    end
    factory(:battery, class: Product::Battery) do
      voltage "12"
      current "1200"
    end
    description "Good product !!!"
  end
end
