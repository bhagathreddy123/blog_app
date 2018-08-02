require 'rails_helper'
RSpec.feature "Creating Articles" do
	scenario "A user create a new article" do
		visit "/"
		click_link "New Article"
		fill_in "Title", with: "Creating a article"
		fill_in "Body", with: "some description about Article"
		click_button "Create Article"
		expect(page).to have_content("Article has been created")
		expect(page.current_path).to eq(articles_path)
	end
    scenario "A user fail to create a new article" do
    	visit "/"
    	fill_in  "Title", with: ""
    	fill_in "Body", with: ""
    	click_button "Create Article"
    	expect(page).to have_content("Article has not been created")
    	expect(page).to have_content("title cannot be blank")
    	expect(pag).to have_content("Body can not be blank")
    end
end