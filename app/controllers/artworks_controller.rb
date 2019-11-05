class ArtworksController < ApplicationController
  before_action :authenticate_user!
  def index
    @artwork = Artwork.where(user_id: params[:user_id])
  end

  def new
    @artwork = Artwork.new
    @user = User.find(params[:user_id])
    @categories = Category.all
  end 
  
  def create
    Artwork.create(artwork_params)
  end

  private 

  def artwork_params
    params.require(:user).permit(:title, :artwork, :price)
  end
end
