require 'rails_helper'

RSpec.describe ArtworksController, type: :controller do
  describe "artworks#index action" do
    it "retrieves all artworks" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
