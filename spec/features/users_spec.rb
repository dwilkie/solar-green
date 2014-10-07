require 'rails_helper'

feature "User" do
  include LoginHelpers
  include TranslateHelpers

  let(:user){ create(:user, password: "secret_password") }

  describe "When logged in" do
    before do
      login(user, "secret_password")
    end

    it "should have a link to product index" do
      within(".navbar-nav") do
        page.should have_content("Products")
      end
    end

    it "should show thier name and sign out link" do
      within("#drop_username") do
        page.should have_content(user.name)
      end
      find_button(user.name).click
      within(".dropdown-menu") do
        page.should have_content(translate(:devise, :sessions, :sign_out))
        page.should have_content("Setting")
      end
    end
  end
 end
