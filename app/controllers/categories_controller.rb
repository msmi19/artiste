class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id].to_i)
  end
  
end
