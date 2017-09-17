require 'rails_helper'

RSpec.feature "Games", type: :feature do
  scenario "user can create a new game" do

    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
    click_button "New game"
    expect(page).to have_content "Game no"
  end
end
