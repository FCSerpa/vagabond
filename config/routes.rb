Rails.application.routes.draw do

  root 'welcome#index'

  get '/sign_in', to: 'sessions#new'
  post '/sessions/new', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  get 'user/new'
  get '/users/new', to: 'users#new' 
  post '/users', to: 'users#create'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/edit', to: 'users#edit'
  patch 'users/:id', to: 'users#update'

  get '/tips/new', to: 'tips#new'
  post '/tips', to: 'tips#create'
  get '/tips/:id', to: 'tips#show', as: 'tip'
  get 'tips/:id/edit', to: 'tips#edit'
  patch '/tips/:id', to: 'tips#update'

  get '/places', to: 'places#index'

end
