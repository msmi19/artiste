require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
   describe "categories#show action" do
    it "should successfully show the page" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
