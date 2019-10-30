Rails.application.routes.draw do
  devise_for :users
  root 'paintings#index'
end
