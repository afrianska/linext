require "rails_helper"

RSpec.describe "creating post" do
  scenario "successfully" do
    visit root_path
    click_on "write a story"

    fill_in "Title", with: "My First Post"
    fill_in "Body", with: "Some awesome content"
    click_on "Publish"

    expect(page).to have_content "My First Post"
  end

  scenario "unsuccessfully" do
    visit root_path
    click_on "write a story"

    fill_in "Title", with: "My First Post"
    fill_in "Body", with: ""
    click_on "Publish"

    expect(page).to have_css ".error"
    #expect(current_path).to eq(new_post_path)
  end

end
