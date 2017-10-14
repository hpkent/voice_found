Rails.application.routes.draw do

  resources :activities
  root to: 'activities#new'

  post '/activities/:id/edit' => 'activities#edit'
  post '/activities/:id/update' => 'activities#update'
  post '/activities/new' => 'activities#new'

end
