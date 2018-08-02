require "rails_helper"
RSpec.feature "listing articles" do
	before do
      @article1 = Article.create(title: "first article", body: "body of first article")
      @article2 = Article.create(title: "second article", body: "body of second article")
	end
	scenario "List all articles" do
		visit "/"
		expect(:page).to have_content(@article1.title)
		expect(:page).to have_content(@article1.body)
		expect(:page).to have_content(@article2.title)
		expect(:page).to have_content(@article2.body)
		expect(:page).to have_link(@article1.title)
		expect(:page).to have_link(@article1.title)
	end
end