require "rails_helper"
RSpec.feature "showing article" do
	before do
      @article = Article.create(title: "first article", body: "body of first article")
	end
	scenario "Display individual article" do
		visit "/"
		expect(:page).to have_content(@article.title)
		expect(:page).to have_content(@article.body)
		
		expect(current_path).to have_link(article_path(@article))
	end
end