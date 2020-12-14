Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'

  get "login" => "sessions#new"
  get "login" => "sessions#create"
 
end
