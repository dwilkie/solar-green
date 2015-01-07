require 'rails_helper'

feature "InventoryInvoice" do
  include LoginHelpers
  include TranslateHelpers
  let(:user){ create(:user, password: "secret_password")}
  let(:branch){ create(:branch) }

  before do
    login(user, "secret_password")
    visit(inventory_invoices_path)
  end

  describe "visited /inventory_invoices/index" do
    it "should have a new link" do
      page.should have_content(translate(:actions, :new))
    end
    # it "should show a list of product with actions" do
    #   page.should have_content(solar_product.name)
    #   page.should have_content(translate(:actions, :new))
    #   page.should have_link(solar_product.name, href: product_solar_path(solar_product))
    # end

    # context "given visited product/:type/:id" do
    #   before do
    #     visit polymorphic_path(solar_product)
    #   end
    #   it "should product info" do
    #     page.should have_content(solar_product.name)
    #     page.should have_content(solar_product.power_rating)
    #     page.should have_content(solar_product.description)
    #   end
    # end
  end
end
