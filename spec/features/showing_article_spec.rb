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
	scenario "A signed in owner sees both the Edit and Delete buttons" do
    login_as(@john)
    visit "/"
    click_link @article.title
    
    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(article_path(@article))
    
    expect(page).to have_link("Edit Article")
    expect(page).to have_link("Delete Article")
  end
end