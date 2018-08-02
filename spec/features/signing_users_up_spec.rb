require "rails_helper"
RSpec.feature "users sign up" do
	scenario "with valid credentials" do
		visit "/"
		click_link "Sign up"
		fill_in "Email", with: "user1@gmail.com"
		fill_in "password", with: "password"
		fill_in "password_confirmation", with: "password"
		click_button "Sign up"
		expect(:page).to have_content "user signed up successfully"
	end
end