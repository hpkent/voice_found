Rails.application.routes.draw do
  resources :activities

  root to: 'activities#new'

end
