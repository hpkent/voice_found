Rails.application.routes.draw do

  resources :activities
  resources :records

  root to: 'records#index'


end
