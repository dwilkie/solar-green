module LoginHelpers
  def login(user, password)
    visit new_user_session_path
    fill_in translate(:activerecord, :attributes, :user, :email), with: user.email
    fill_in translate(:activerecord, :attributes, :user, :password), with: password
    click_button(translate(:devise, :sessions, :sign_in))
  end
end
