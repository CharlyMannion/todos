require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    create_todo("My First Todo")
    expect(page).to display_todo "My First Todo"
    # expect(page).to have_css '.todos li', text: "My First Todo"
  end
end
