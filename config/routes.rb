Rails.application.routes.draw do
  devise_for :users
  root 'home_page#index'
  get 'privacy', to: 'home_page#privacy'
end
