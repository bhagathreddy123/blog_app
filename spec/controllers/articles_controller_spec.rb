require 'rails_helper'

Rspec.describe ArticlesController, type: :controller do
  describe "GET #index" do
  	it "returns http success" do
  		get :index
  		except(response).to have_http_status(:success)
  	end
end