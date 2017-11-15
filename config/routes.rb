Rails.application.routes.draw do

  devise_for :users
  resources :clients
  resources :activities
  resources :records

  root to: 'records#index'


end
