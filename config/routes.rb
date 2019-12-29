Rails.application.routes.draw do
  get 'calenders/index'

  root "calenders#index"
end
