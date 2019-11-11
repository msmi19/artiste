class ArtworksController < ApplicationController
  before_action :authenticate_user!
  # before_action :require_authorized_for_current_artwork, only: [:show]
  
  def index
    @artworks = Artwork.all
  end

  def new
    @artwork = Artwork.new
    @user = User.find(params[:user_id])
    @categories = Category.all
  end 
  
  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user

    if @artwork.save
      redirect_to artworks_path
    end
  end

  def show
    @artworks = Artwork.where(category_id: params[:category_id])
  end


  private 

  def artwork_params
    params.require(:artwork).permit(:title, :price, :image, :category_id)
  end

  def require_authorized_for_current_artwork
    if current_artwork.user != current_user
      render plain: "Unauthorized", status: :unauthorized
    end
  end

end
