Rails.application.routes.draw do

  root 'welcome#index'

  get '/tips/', to: 'tips#index'
  get 'tips/new'
  get 'tips/show'
  get '/tips/:id', to: 'tips#show'
  delete '/tips/:id', to: 'tips#destroy'

  get "/sign_in", to: "sessions#new"
  post "/sessions/new", to: "sessions#create"

  get 'user/new'
  get '/users/new', to: 'users#new' 
  post '/users', to: 'users#create'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/edit', to: 'users#edit'
  patch 'users/:id', to: 'users#update'

  get '/places/:id', to: 'places#show'

end
