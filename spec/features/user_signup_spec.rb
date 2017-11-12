require "rails_helper"

RSpec.describe "User Signing Up" do

    scenario "successfully" do
        visit new_user_registration_path
        fill_in "Email", with: "afrian@polah.co.id"
        fill_in "Password", with: "123456"
        fill_in "Password confirmation", with: "123456"
        click_on "Sign up"

        expect(page).to have_content "afrian@polah.co.id"
    end

    scenario "unsuccessfuly" do
        visit new_user_registration_path
        fill_in "Email", with: "afrian@polah.co.id"
        fill_in "Password", with: ""
        fill_in "Password confirmation", with: ""
        click_on "Sign up"

        expect(page).to have_content "error"
    end
end