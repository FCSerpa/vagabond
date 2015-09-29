Rails.application.routes.draw do

  get 'tips/new'

  get 'tips/show'

  	get "/sign_in", to: "sessions#new"
  	post "/sessions/new", to: "sessions#create"

	root 'welcome#index'
	get 'user/new'

  	get '/users/new', to: 'users#new' 
  	post '/users', to: 'users#create'
  	get 'users/:id', to: 'users#show', as: 'user'
  	get 'users/:id/edit', to: 'users#edit'
  	patch 'users/:id', to: 'users#update'


  	get '/tips/:id', to: 'tips#show'

end
