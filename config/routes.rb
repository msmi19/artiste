Rails.application.routes.draw do
  devise_for :users
  root 'home_page#index'
  resources :users do
    resources :artworks, only: [:create, :new, :index]
  end
end
