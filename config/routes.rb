Rails.application.routes.draw do

  root 'welcome#index'

  get 'tips/new'
  get 'tips/show'
  get '/tips/:id', to: 'tips#show'

  get "/sign_in", to: "sessions#new"
  post "/sessions/new", to: "sessions#create"

  get 'user/new'
  get '/users/new', to: 'users#new' 
  post '/users', to: 'users#create'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/edit', to: 'users#edit'
  patch 'users/:id', to: 'users#update'

  get '/places/:id', to: 'placesw#show'

end
