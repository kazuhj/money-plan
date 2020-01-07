Rails.application.routes.draw do
  devise_for :users
  get 'calenders/index'
  root "calenders#index"
  resources :users, only: [:edit, :update]
  resources :inputs
  resources :costs
end
