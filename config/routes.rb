Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :prototypes, only: [:new, :create]

  get "login" => "sessions#new"
  get "login" => "sessions#create"
 
end
