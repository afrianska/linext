require "rails_helper"

RSpec.feature "User visits homepage" do
  scenario "succesfully adn see a logo" do
    visit root_path
    expect(page).to have_content "linext"
  end
end
