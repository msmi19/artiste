require 'rails_helper'

RSpec.describe ArtworksController, type: :controller do
   describe "artworks#new action" do
    it "should successfully create a new piece of artwork, find the user's ID, and put it into a category" do
      get :user_artworks
      expect(response).to have_http_status(:success)
    end
  end
end
