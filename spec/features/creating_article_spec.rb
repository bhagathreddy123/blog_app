require 'rails_helper'
RSpec.feature "Creating Articles" do
	scenario "A user create a new article" do
		visit "/"
		click_link "New Article"
		fill_in "Title", with: "Creating a article"
		fill_in "Body", with: "some description about Article"
		click_button "create Article"
		except(page).to have_content("Article has been created")
		except(page.current_path).to eq(articles_path)
	end
end