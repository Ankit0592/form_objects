Rails.application.routes.draw do
  root to: 'visitors#index'
  resources :visitors
  resources :users
end
