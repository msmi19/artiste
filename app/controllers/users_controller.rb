class UsersController < ApplicationController
  def index
    @artwork = Artwork.all
  end

  def new
    @artwork = Artwork.new
  end

  def show 
    @user = User.find(params[:id])
  end
end
