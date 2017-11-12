require "rails_helper"

RSpec.feature "User Signing In" do

    background do
        @user = User.create!(email: "afrian@polah.co.id", password: "123456", password_confirmation: "123456")
    end

    scenario "Successfully" do
        sign_in @user

        expect(page).to have_content @user.email
    end 

    scenario "Unsuccessfully" do
        visit new_user_session_path
        fill_in "Email", with: "wrongemail"
        fill_in "Password", with: "wrongpassword"
        click_on "Log in"

        expect(page).not_to have_content @user.email
    end
end