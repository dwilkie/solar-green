require 'rails_helper'

feature "UserLogins" do
  def login
    visit new_user_session_path
    fill_in translate(:activerecord, :attributes, :user, :email), with: user.email
    fill_in translate(:activerecord, :attributes, :user, :password), with: "secret_password"
    click_button(translate(:devise, :sessions, :sign_in))
  end

  def translate(*args)
    options = args.extract_options!
    I18n.t!(args.join("."), options)
  end

  let(:user){ create(:user, password: "secret_password") }

  describe "When he/she login success" do
    it "should take them to dashbaord" do
      visit root_path
    end
    it "should show thier name and sign out link" do
      login
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
