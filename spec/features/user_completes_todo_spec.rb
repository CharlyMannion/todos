require 'rails_helper'

feature "User completes a todo" do
  scenario "successfully" do
    sign_in
    create_todo("A Todo to mark complete")
    click_on "Mark complete"
    expect(page).to have_css '.todos li.completed', text: "A Todo to mark complete"
  end
end
