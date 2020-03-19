require 'rails_helper'

feature "User marks a todo incomplete" do
  scenario "successfully" do
    sign_in
    create_todo("A Todo to mark complete")
    click_on "Mark complete"
    click_on "Mark incomplete"
    expect(page).not_to display_completed_todo "A Todo to mark complete"
    expect(page).to display_todo "A Todo to mark complete"
  end
end
