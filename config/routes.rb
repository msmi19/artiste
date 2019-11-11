Rails.application.routes.draw do
  devise_for :users
  root 'home_page#index'
  resources :users do
    resources :artworks, only: [:create, :new]
  end
  resources :artworks, only: [:show, :index]
  resources :categories, only: [:index, :show]
end
