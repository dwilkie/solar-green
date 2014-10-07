require 'rails_helper'

feature "Product" do
  include LoginHelpers
  include TranslateHelpers
  let(:user){ create(:user, password: "secret_password")}
  let(:solar_product){ create(:solar) }
  let(:battery_product){ create(:battery) }

  before do
    login(user, "secret_password")
    solar_product
    battery_product
    visit(product_base_index_path)
  end

  describe "visited /product/base" do
    it "should have a new link" do
      page.should have_content(translate(:actions, :new))
    end
    it "should show a list of product with actions" do
      page.should have_content(solar_product.name)
      page.should have_content(translate(:actions, :new))
      page.should have_link("Edit", href: edit_product_solar_path(solar_product))
      page.should have_link("Edit", href: edit_product_battery_path(battery_product))
      page.should have_link(solar_product.name, href: product_solar_path(solar_product))
      page.should have_link("Edit", href: edit_product_battery_path(battery_product))

    end
  end
end
