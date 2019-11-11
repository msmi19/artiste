require 'rails_helper'

RSpec.describe HomePageController, type: :controller do
  describe "home_page#index action" do
    it "should successfully show the home/main page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
