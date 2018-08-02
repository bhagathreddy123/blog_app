require "rails_helper"
RSpec.feature "users sign in" do
	before do
		@bhagath = User.create(email: "bhagath@example.com", 
			                   password: "password")
	end
	scenario "with valid credentials" do
		visit "/"
		click_link "Sign in"
		fill_in "Email", with: @bhagath.email
		fill_in "password", with: @bhagath.password
		click_button "Sign in"
		expect(:page).to have_content("user signed in successfully")
		expect(:page).to have_content("signed in as #{@bhagath.email}")
	end
end