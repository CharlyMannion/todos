require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    # sign_in
    visit root_path

    click_on "Add a new todo"
    fill_in "Title", with: "My First Todo"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: "My First Todo"
    # expect(page).to have_content "My First Todo"
  end
end
