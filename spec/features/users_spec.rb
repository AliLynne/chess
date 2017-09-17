require 'rails_helper'

RSpec.feature "Users", type: :feature do
  scenario "users can sign up" do
    visit root_path
    click_link "Sign Up"
    fill_in "Email", with: "test@user.com"
    fill_in "Password", with: "I am a password."
    fill_in "Password confirmation", with: "I am a password."
    click_button "Sign up"

    expect(page).to have_content "Welcome! You have signed up successfully."
  end
  scenario "user can sign in and out" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"

    expect(page).to have_content "Signed in successfully."
    click_link "Sign Out"
    expect(page).to have_content "Signed out successfully."
  end
end
