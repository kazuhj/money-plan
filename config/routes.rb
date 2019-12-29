Rails.application.routes.draw do
  devise_for :users
  get 'calenders/index'

  root "calenders#index"
end
