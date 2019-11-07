class CategoriesController < ApplicationController
  def index 
  end 


  def show
    @artworks = Artwork.where(category_id: params[:category_id])
  end

end
