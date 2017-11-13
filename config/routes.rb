Rails.application.routes.draw do

  resources :clients
  resources :activities
  resources :records

  root to: 'records#index'


end
