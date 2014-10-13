class Product::ChargeControllersController < Product::BaseController
  defaults resource_class: Product::ChargeController
end
